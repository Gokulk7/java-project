pipeline {
  agent any
  stages {
    stage('Collecting files') {
      parallel {
        stage('Initial-Build') {
          steps {
            build 'job1'
            echo 'job1'
          }
        }
        stage('UnixBuild') {
          steps {
            echo 'UNix machine build'
          }
        }
        stage('Solaris Build') {
          steps {
            echo 'Solaris build'
          }
        }
      }
    }
    stage('Verify classes') {
      parallel {
        stage('Verify classes') {
          steps {
            echo 'verify class files'
          }
        }
        stage('Package') {
          steps {
            echo 'Package done'
          }
        }
      }
    }
    stage('Unit test') {
      parallel {
        stage('Unit test') {
          steps {
            echo 'test done'
          }
        }
        stage('Sonar Job') {
          steps {
            echo 'Sonar Job completed'
          }
        }
      }
    }
    stage('Deploy') {
      parallel {
        stage('Deploy') {
          steps {
            echo 'Deployment done'
          }
        }
        stage('Upload to Jfrog') {
          steps {
            echo 'Binary uploaded to Jfrog'
          }
        }
      }
    }
    stage('Publish mail') {
      steps {
        echo 'Mail sent'
      }
    }
  }
}