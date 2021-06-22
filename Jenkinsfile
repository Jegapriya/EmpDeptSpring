node('master') {
    
    // Get Artifactory Server Instance Details
    def server = Artifactory.server "01"
    def buildInfo = Artifactory.newBuildInfo()

    stage('Checkout From Git'){
        git branch: 'Jenkins', url: 'https://github.com/Jegapriya/EmpDeptSpring.git'
    }
    
    stage('clean') {
        sh 'mvn clean'
    }
    
    stage('compile'){
        sh 'mvn compile'
    }
    
    stage('test'){
        sh 'mvn test'
    }
    
    stage('package'){
        sh 'mvn package'
    }

    stage('Sonarqube'){
    	withSonarQubeEnv('Sonarqube') {
	   sh 'mvn sonar:sonar'
	}
    }
    
    stage('Build Management') {
		def uploadSpec = """{ 
			"files": [
			{
			"pattern": "**/*.war",
			"target": "empdept-war"
			}
		]

	}"""
	
	server.upload spec: uploadSpec
    }
   
    stage('Publish Build Info'){
	server.publishBuildInfo buildInfo
    }


    stage('Artifact'){
        archiveArtifacts artifacts: 'target/*.war', followSymlinks: false
    }
    
    stage('Download Package') {
   	def downloadSpec = """{ 
     	"files": [
         {
       	    "pattern": "empdept-war/*.war",
	    "target": "terraform-code/roles/empdept/files/"
         }
      ]
      }"""
      server.download spec: downloadSpec
   }

   stage('Getting Ready For Ansible Deployment'){
     sh "echo \'<h1>JENKINS TASK BUILD ID: ${env.BUILD_DISPLAY_NAME}</h1>\' > ansible-code/roles/empdept/files/index.html"
   }

     
   /*stage('Ansible Deployment'){
     sh "ls;cd ansible-code; ansible-playbook empdept.yaml"
   }*/
     
   def project_terra="terraform-code/"
   dir(project_terra) {
   stage('Prod Deployment on AWS'){
      sh label: 'terraform', script: 'terraform init'
      sh label: 'terraform', script: 'terraform apply -input=false -auto-approve'
   }
}
   
}
