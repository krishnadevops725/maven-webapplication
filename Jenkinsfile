node
{

   echo "git branch name: ${env.BRANCH_NAME}"
   echo "build number is: ${env.BUILD_NUMBER}"
   echo "node name is: ${env.NODE_NAME}"


   // /var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven-3.9.9/bin
   def mavenHome=tool name: "maven-3.9.6"
    try
    {

  stage('git checkout')
  {
    notifyBuild('STARTED')
    git branch: 'dev', url: 'https://github.com/krishnadevops725/maven-webapplication.git
  } 

    stage('COMPILE')
  {
    sh "${mavenHome}/bin/mvn clean compile"
  }

  stage('Build')
  {
    sh "${mavenHome}/bin/mvn clean package"
  }

    stage('SQ Report')
  {
    sh "${mavenHome}/bin/mvn sonar:sonar"
  }

      stage('Upload Artifact')
  {

    sh "${mavenHome}/bin/mvn clean deploy"
  }

    stage('Deploy to Tomcat') 
    {
    

      sh """
         curl -u krishna:krishna \
         --upload-file target/maven-web-application.war \
         "http://13.218.222.226:8080/manager/text/deploy?path=/maven-web-application&update=true"
      """
          
   
    }

    }  //try ending

    catch (e) {
   
       currentBuild.result = "FAILED"

  } finally {
    // Success or failure, always send notifications
    notifyBuild(currentBuild.result)
  }
