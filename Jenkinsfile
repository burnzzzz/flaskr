node('python') {
git poll: true, url: 'https://github.com/teoyaomiqui/flaskr'
def BUILD_CONTAINER = "${env.BUILD_CONTAINER}"
    stage('Test') {
        sh './pipelines/test.sh'
    }
    if(BUILD_CONTAINER.toLowerCase() == true) {
        stage('Build') {
            sh 'echo $BUILD_CONTAINER'
        }
    }
}
