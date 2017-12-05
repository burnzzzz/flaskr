node('python&&docker') {
git poll: true, url: 'https://github.com/teoyaomiqui/flaskr'
def BUILD_CONTAINER = "${env.BUILD_CONTAINER}"
    stage('Test') {
        sh './pipelines/scripts/test.sh'
    }
    if(BUILD_CONTAINER.toLowerCase() == "true") {
        stage('Build Container') {
            sh './pipelines/scripts/build_and_push_container.sh'
        }
    }
}
