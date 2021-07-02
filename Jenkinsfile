node('master') {

  try {    

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

    stage('Archive Artifact') {
      archiveArtifacts artifacts: 'target/*.war', followSymlinks: false
    }
     
   stage('Ansible Deployment'){
     sh "cp -rf target/*.war 07-Roles/files/ ;ls;cd 07-Roles; ansible-playbook jbosswebapp.yml"
   }
   }
   catch(err) {
    	mail bcc: '', body: 'your build got failed', cc: '', from: '', replyTo: '', subject: '${err}', to: 'jegapriyamunieswaran@gmail.com'
        currentBuild.result='Failure'
   }
     
}
