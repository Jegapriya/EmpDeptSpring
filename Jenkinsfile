node('master') {
    

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
     sh "ls;cd 05-Ansible/07-Roles; ansible-playbook jbosswebapp.yml"
   }
     
}
