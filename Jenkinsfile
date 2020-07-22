pipeline {
    agent { dockerfile true } 
    environment {
       HOME = '/tmp'
    } 
    stages {
        stage('Test') {
            steps {
                sh 'cd /app'
                sh 'dotnet test --no-build XUnitHelloWorld/bin/Debug/netcoreapp3.1/XUnitHelloWorld.dll'
                sh 'ls -ah /tmp'
                //sh 'cd /app && /dd-tracer-dotnet/dd-trace.bash dotnet test'
            }
        }
    }
}