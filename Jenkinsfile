node {

    echo "git branch name: ${env.BRANCH_NAME}"
    echo "build number is: ${env.BUILD_NUMBER}"
    echo "node name is: ${env.NODE_NAME}"

    // Maven path
    def mavenHome = tool name: "maven-3.9.9"

    try {

        stage('git checkout') {
            notifyBuild('STARTED')

            git branch: 'dev',
                url: 'https://github.com/krishnadevops725/maven-webapplication.git'
        }

        stage('COMPILE') {
            sh "${mavenHome}/bin/mvn clean compile"
        }

        stage('Build') {
            sh "${mavenHome}/bin/mvn clean package"
        }

        stage('SQ Report') {
            sh "${mavenHome}/bin/mvn sonar:sonar"
        }

        stage('Upload Artifact') {
            sh "${mavenHome}/bin/mvn clean deploy"
        }

        stage('Deploy to Tomcat') {

            sh """
                curl -u krishna:krishna \
                --upload-file target/maven-web-application.war \
                "http://13.218.222.226:8080/manager/text/deploy?path=/maven-web-application&update=true"
            """
        }

    } catch (e) {

        currentBuild.result = "FAILED"
        throw e

    } finally {

        // Always send Slack notification
        notifyBuild(currentBuild.result)
    }
}

// Notification Function
def notifyBuild(String buildStatus = 'STARTED') {

    // If buildStatus is null, mark SUCCESS
    buildStatus = buildStatus ?: 'SUCCESS'

    def colorCode = '#FF0000'
    def subject = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
    def summary = "${subject} (${env.BUILD_URL})"

    // Set Slack color based on status
    if (buildStatus == 'STARTED') {
        colorCode = '#FFFF00'
    } else if (buildStatus == 'SUCCESS') {
        colorCode = '#00FF00'
    } else {
        colorCode = '#FF0000'
    }

    // Send Slack notification
    slackSend(
        color: colorCode,
        message: summary,
        channel: '#sre-restarent'
    )
}
