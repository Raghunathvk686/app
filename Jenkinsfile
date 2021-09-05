pipeline {
    agent any
    
tools {
    maven 'Maven3.8.2'
}

 stages {
        stage('init') {
            steps {
                sh '''
                 echo ${Version}
                 new_version=${current_version}
                 current_version=`cat Dockerfile | grep version= | cut -c 13-`
                 sed -i "s/$current_version/$Version" Dockerfile
                '''
            }
        }
 }
    
}