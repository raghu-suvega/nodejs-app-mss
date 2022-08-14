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
    stage('Sonaqube-analysis')
    {
        sh "npm run sonar"
    }
    stage('docker-image-build')
    {
        sh "docker build -t node-app:1.0.0 ."
    }
    stage('docker-image-push')
    {
        sh "docker tag node-app:1.0.0 pavanktm/nodeapp:1.0.0"
        sh "docker login -u pavanktm -p Lion@1234"
        sh "docker push pavanktm/node-app:1.0.0"
    }
    stage('deploy')
    {
        sh "kubectl apply -f deployment.yaml"
    }
}
