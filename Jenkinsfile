pipeline {
  agent any
  stages {
    stage('Log Versions') {
      steps {
        sh 'sh \'./scripts/trigger_vip_job.sh\''
      }
    }

  }
}