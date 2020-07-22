pipeline {
    agent { dockerfile true } 
    environment {
       HOME = '/tmp'
    } 
    stages {
        stage('Test') {
            steps {
                sh 'dotnet test --no-build > /tmp/testoutput.txt'
                sh 'cat /tmp/testoutput.txt'
                sh 'ls -ah /tmp'
                //sh 'cd /app && /dd-tracer-dotnet/dd-trace.bash dotnet test'
            }
        }
    }
}