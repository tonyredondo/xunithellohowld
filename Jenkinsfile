pipeline {
    agent { dockerfile true } 
    environment {
       HOME = '/tmp'
    } 
    stages {
        stage('Test') {
            steps {
                sh 'echo $DD_TRACE_AGENT_URL'
                sh 'cd /app && /dd-tracer-dotnet/dd-trace.bash dotnet test XUnitHelloWorld/bin/Debug/netcoreapp3.1/XUnitHelloWorld.dll || true'
                sh 'cat /var/log/datadog/dotnet/dotnet-profiler.log'
            }
        }
    }
}