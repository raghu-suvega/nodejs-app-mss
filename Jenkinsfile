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
    stage('docker-image-build')
    {
        sh "docker build -t node-app:1.0.0 ."
    }
    stage('docker-image-push')
    {
        sh "docker tag node-app:1.0.0 pavanktm/node-app:1.0.0"
        sh "echo $dockerpasswd| docker login -u pavanktm --password-stdin"
        sh "docker push pavanktm/node-app:1.0.0"
    }
}
