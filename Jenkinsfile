pipeline {
   git poll: true, url: 'https://github.com/teoyaomiqui/flaskr'
   def BUILD_CONTAINER = "${env.BUILD_CONTAINER}"
   agent { node { label 'docker' } }
   stages {
       stage('Test') {
           steps {
               sh './pipelines/test.sh'
           }
       }
       if(BUILD_CONTAINER) {
           stage('Build') {
               steps {
                   echo "BUILD"
               }
           }
       }
   }
}
