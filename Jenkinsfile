node(){
stage ("clone"){
  checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/csenapati12/java-tomcat-maven-example.git']]])
}
stage ("build"){
  withMaven(maven:'Maven_3_3_9', mavenLocalRepo: '.repository',mavenSettingsConfig:'my-config') {
    sh 'mvn clean install'
  }
}
stage ("test-unittesting"){
}
stage ("Sonarqube"){
}
stage ("Creating docker container"){
}

stage ("docker verification"){
}
  stage ("upload docker image to dockehu/artifactory"){
}
  stage('Clean-workspace'){
  cleanWs()
  }
}
