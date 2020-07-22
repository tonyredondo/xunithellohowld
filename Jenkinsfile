pipeline {
    agent { dockerfile true } 
    environment {
       HOME = '/tmp'
    } 
    stages {
        stage('Test') {
            steps {
                sh 'cat /etc/hosts'
                sh 'ping 172.17.0.1'
                sh 'cd /app && /dd-tracer-dotnet/dd-trace.bash dotnet test XUnitHelloWorld/bin/Debug/netcoreapp3.1/XUnitHelloWorld.dll'
            }
        }
    }
}