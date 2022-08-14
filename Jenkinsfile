node
{
    stage('checkout')
    {
        git 'https://github.com/raghu-suvega/nodejs-app-mss.git'
    }
    stage('build')
    {
        sh "npm config set optional false"
        sh "npm i"
    }
    stage('SonarQubereport')
    {
        sh "npm run sonar"
    }
}
