pipeline {
    agent any

    stages {
        stage('pull code') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: '6095c14d-14d8-43db-9724-ee683c0b258c', url: 'https://github.com/yewanwan/idcssdkjava.git']]])
            }
        }
        stage('build project') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('deploy project') {
            steps {
                deploy adapters: [tomcat8(credentialsId: '48894fd1-6ebc-4bb7-bc2e-d8d4e0a20409', path: '', url: 'http://152.70.89.220:8080')], contextPath: null, war: 'target/*.war'
            }
        }
    }
}
