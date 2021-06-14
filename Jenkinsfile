pipeline {
    node { label "$NODE" }
 parameters {
  //  gitParameter branchFilter: 'origin/(.*)', defaultValue: 'master', name: 'BRANCH', type: 'PT_BRANCH'
    // parameters { string(name: 'NODE', defaultValue: 'some_node', description: '') }
   gitParameter branchFilter: 'origin/(.*)', defaultValue: 'master', name: 'BRANCH', type: 'PT_BRANCH',string(name: 'NODE', defaultValue: 'master', description: '')

  }
    stages {
	    stage('Checkout') {           	
            steps {
             git branch: "${params.BRANCH}", url: 'https://github.com/csenapati12/java-tomcat-maven-docker.git'
		
            }
        }
	    stage('Build and Package') {           	
            steps {
                    
		 script{
		    sh """
		    ls
		   #  mvn clean package
		   echo  "MAster"
		   ls -la               
		   """
		 }
	 
            }
        }
       
    }  
}
