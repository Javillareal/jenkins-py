pipeline {
    agent { node { label 'Slave1' } }
    stages {
        stage('build') {
            steps {
                ansiblePlaybook(
                  credentialsId: 'ansible-jenkins',
                  inventory: 'provision/inventory.ini',
                  playbook: 'provision/play.yml'
                )
            }
        }
    }
}
