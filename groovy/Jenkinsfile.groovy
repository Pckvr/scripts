node {

    agent {
        docker {
            image 'jpeckover/pool_frontend:latest'
            label 'frontend'
            args '-d -p 80:80'
        }
    }
}



node {
    stage("docker run frontend") {
        sh "docker run --user='jenkins' -d --name frontend -p 80:80 jpeckover/pool_frontend:latest"
    }
}