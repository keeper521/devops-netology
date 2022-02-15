pipeline {
    agent {
        label 'linux'
    }
    stages {
        stage('Checkout') {
            steps{
                git branch: 'main', credentialsId: '7107e6e5-6511-44ab-903a-387cb7a5c266', url: 'git@github.com:netology-code/mnt-homeworks-ansible.git'
            }
        }
        stage('Install molecule') {
            steps{
                sh 'pip3 install -r test-requirements.txt'
                sh "echo =============="
            }
        }
        stage('Run Molecule'){
            steps{
                sh 'molecule test'
            }
        }
    }
}