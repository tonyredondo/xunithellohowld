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
                dir('/app') {
                    sh '/dd-tracer-dotnet/dd-trace.bash dotnet test XUnitHelloWorld/bin/Debug/netcoreapp3.1/XUnitHelloWorld.dll'
                }
            }
        }
    }
}