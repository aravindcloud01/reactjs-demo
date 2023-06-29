pipeline{
    agent any
    stages {
        stage("Build the Image"){
            when {
                branch 'master'
            }
            steps {
                sh './scripts/prod_build.sh'
            }
        }
        stage("Push the Image to Repository"){
            when {
                branch 'master'
            }
            steps {
                echo "Docker push"

            }
        }
        stage("Deploy the Image to the Server"){
            when {
                branch 'master'
            }
            steps {
                sh './scripts/prod_deploy.sh'
            }
        }

        stage("Build the Image"){
            when {
                branch 'dev'
            }
            steps {
                sh './scripts/dev_build.sh'
            }
        }
        stage("Push the Image to Repository"){
            when {
                branch 'dev'
            }
            steps {
                echo "Docker push"

            }
        }
        stage("Deploy the Image to the Server"){
            when {
                branch 'dev'
            }
            steps {
                sh './scripts/dev_deploy.sh'
            }
        }
        
    }

}
