git poll: true, url: 'https://github.com/teoyaomiqui/flaskr'
def BUILD_CONTAINER = "${env.BUILD_CONTAINER}"
pipeline {
   agent { node { label 'docker' } }
   stages {
       stage('Test') {
           steps {
               sh './pipelines/test.sh'
           }
       }
       stage('Build') {
           steps {
               sh 'echo BUILD"'
           }
       }
   }
}
