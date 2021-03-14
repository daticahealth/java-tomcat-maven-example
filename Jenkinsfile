pipeline {
    agent any   
 parameters {
    gitParameter branchFilter: 'origin/(.*)', defaultValue: 'master', name: 'BRANCH', type: 'PT_BRANCH'
  }
    stages {
	    stage('Checkout') {           	
            steps {
             git branch: "${params.BRANCH}", url: 'https://github.com/csenapati12/java-tomcat-maven-docker.git'
		
            }
        }
	    stage('Build and Package') {           	
            steps {
            //  withMaven(maven: 'maven-3.6.3') {           
		 script{
		    sh """
		     mvn clean package
                """
		 }
	    //}
            }
        }
        stage('Ansible Deploy') {           	
            steps {
               script{              
                sh """
		  ansible --version
		  ansible-playbook deployfile.yml
                """
	       }
            }
        }
    }  
}
