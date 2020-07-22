pipeline {
    agent { 
        dockerfile {
            filename 'Dockerfile'
            args '--net=host'
        } 
    } 
    environment {
       HOME = '/tmp'
    } 
    stages {
        stage('Test') {
            steps {
                sh 'curl http://localhost:8126'
                sh 'cd /app && /dd-tracer-dotnet/dd-trace.bash dotnet test XUnitHelloWorld/bin/Debug/netcoreapp3.1/XUnitHelloWorld.dll || true'
                sh 'ls /var/log/datadog/dotnet/'
                sh 'cat /var/log/datadog/dotnet/dotnet-profiler.log'
            }
        }
    }
}