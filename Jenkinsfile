node(){
checkout scm         
stage('Maven Build') {         
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
