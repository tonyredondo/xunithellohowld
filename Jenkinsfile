pipeline {
    agent { dockerfile true } 
    environment {
       HOME = '/tmp'
    } 
    stages {
        stage('Test') {
            steps {
                sh 'cd /app && dotnet test --logger "console;verbosity=detailed"'
                //sh 'cd /app && /dd-tracer-dotnet/dd-trace.bash dotnet test'
            }
        }
    }
}