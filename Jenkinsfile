pipeline {
    agent { dockerfile true } 
    environment {
       HOME = '/tmp'
    } 
    stages {
        stage('Test') {
            steps {
                sh 'dotnet test --no-build --logger "console;verbosity=detailed"'
                //sh 'cd /app && /dd-tracer-dotnet/dd-trace.bash dotnet test'
            }
        }
    }
}