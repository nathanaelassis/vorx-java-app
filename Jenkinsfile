pipeline {
    agent any
    
    environment {
      PASS = credentials('registry-pass')
    }
 
    stages {
        stage('Build') {
            steps {
                sh '''
                   ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                   ./jenkins/build/build.sh
                '''
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/test/test-mvn.sh mvn test'
            }
        }
        stage('Push') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy.sh'
            }
        }
        stage('deleteDir') {
            steps {
                sh 'rm -rf /home/ec2-user/jenkins-data/jenkins_home/workspace/vorx-backend-app-pipeline*'
            }
        }
    }
}
