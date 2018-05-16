pipeline {
    agent { node { label 'Slave1' } }
    stages {
        stage('Execute Ansible Script') {
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
