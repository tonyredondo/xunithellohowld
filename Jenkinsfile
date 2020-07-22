pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('Test') {
            steps {
                sh '/dd-tracer-dotnet/dd-trace.bash dotnet test'
            }
        }
    }
}