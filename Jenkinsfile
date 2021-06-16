node('master') {
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
    
    stage('Artifact'){
        archiveArtifacts artifacts: 'target/*.war', followSymlinks: false
    }
    
    stage('Docker Deployment'){
        sh 'docker-compose up -d --build'
    }
}
