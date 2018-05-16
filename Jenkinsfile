pipeline {
    agent { label "Slave1" }
    stages {
        stage('build') {
            steps {
                ansiblePlaybook(
                  ansiblePlaybook colorized: true,
                  credentialsId: 'ansible-jenkins',
                  inventory: 'provision/inventory.ini',
                  playbook: 'provision/play.yml'
                )
            }
        }
    }
}
