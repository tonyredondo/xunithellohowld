pipeline {
    agent { dockerfile true } 
    environment {
       HOME = '/tmp'
    } 
    stages {
        stage('Test') {
            steps {
                sh 'pwd'
                sh 'cd /app'
                sh 'dotnet --version'
                sh 'ls'
                sh 'dotnet test --no-build XUnitHelloWorld/bin/Debug/netcoreapp3.1/XUnitHelloWorld.dll'
                sh 'cat /tmp/testoutput.txt'
                sh 'ls -ah /tmp'
                //sh 'cd /app && /dd-tracer-dotnet/dd-trace.bash dotnet test'
            }
        }
    }
}