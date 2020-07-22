pipeline {
    agent { dockerfile true } 
    stages {
        stage('Test') {
            steps {
                sh 'cd /app && dotnet test'
                //sh 'cd /app && /dd-tracer-dotnet/dd-trace.bash dotnet test'
            }
        }
    }
}