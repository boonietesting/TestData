pipeline {
  agent any
  stages {
    stage('Run Script') {
      steps {
        git(url: 'https://github.com/boonietesting/TestData', branch: 'main', poll: true)
        sh 'echo \'hello world\''
      }
    }

  }
}