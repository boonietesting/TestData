pipeline {
  agent any
  stages {
    stage('Dev') {
      steps {
        echo '**Starting**'
        git(url: 'https://github.com/boonietesting/TestData/tree/main', branch: 'main', credentialsId: 'admin', poll: true)
      }
    }

    stage('') {
      steps {
        echo 'End'
      }
    }

  }
}