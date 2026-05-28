node {
    
    def mavenHome = tool name: "Maven-3.9.6", type: 'maven'

    stage('Git Checkout') {
        git branch: 'dev', url: 'https://github.com/krishnadevops725/maven-webapplication.git'
    }

    stage('Maven Build') {
        sh "${mavenHome}/bin/mvn clean package"
    }

    stage('Generating SonarQube Report') {
        sh "${mavenHome}/bin/mvn sonar:sonar"
    }

    stage('Nexus Backup') {
        sh "${mavenHome}/bin/mvn deploy"
    }

    stage('Deploy to Tomcat') {
      echo "Deploying WAR file using curl..."

      sh """
         curl -u krishna:krishna \
         --upload-file target/maven-web-application.war \
         "http://34.228.200.74:8080/manager/text/deploy?path=/maven-web-application&update=true"
      """
    }

}
