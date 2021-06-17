node('master') {
    
    // Get Artifactory Server Instance Details
    def server = Artifactory.server "01"
    def buildInfo = Artifactory.newBuildInfo()

    stage('Checkout From Git'){
        git 'https://github.com/Jegapriya/EmpDeptSpring.git'
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
    
    stage('Docker Deployment'){
        sh 'docker-compose up -d --build'
    }
}
