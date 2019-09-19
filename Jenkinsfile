node(){
checkout scm    
stage('Code checkout') {         
         sh '''
                 docker build -t testimage .
                 docker run --name=newcontainer -d -p 9898:8080 testimage
            '''
        }
 }
