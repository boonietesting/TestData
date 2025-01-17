pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git(url: 'https://github.com/boonietesting/TestData', branch: 'main', poll: true)
            }
        }
        stage('Run Script') {
            steps {
                bat 'echo Hello World'
            }
        }
    }
}
