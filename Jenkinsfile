node(){
checkout scm    
         
         stage('compile') {         
         sh '''
                 mvn compile
                
            '''
        }
         stage('test') {         
         sh '''
                 mvn test
                
            '''
        }
         
stage('Maven Build') {         
         sh '''
                 mvn package
                
            '''
        }
         stage('deploy to nexus') {         
         sh '''
                 mvn package
                
            '''
        }
         
stage('Docker Build') {         
         sh '''
                 docker build -t testimage .
                 docker run --name=newcontainer -d -p 9898:8080 testimage
            '''
        }
 }
