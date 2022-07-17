pipeline {
    agent any

    environment {
        MYSQL_ROOT_PASSWORD = credentials('MYSQL_ROOT_PASSWORD')
    }

    stages {
        stage('execute') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', credentialsId: 'github_secrets', url: 'git@github.com:soul-craft/liquibase-db-templates.git'
            }

            post {
                success {
                    dir('src/main/resources/init_db') {
                        sh '''mysql -uroot -p${MYSQL_ROOT_PASSWORD} --execute="set names utf8mb4;source db_setup_all.sql;"
                        '''
                    }
                    sh "mvn -P prod clean package"
                    sh "mvn -P dev liquibase:update"
                    sh '''mysql -uroot -p${MYSQL_ROOT_PASSWORD} --execute="use liquibase_test;show tables;select * from people;"
                    '''
                }
            }
        }
    }
}
