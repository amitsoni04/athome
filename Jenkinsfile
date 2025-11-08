pipeline {

    agent any

    stages {

      stage('build and run') {

      steps {

        script {
          sh 'docker build -t homebuild .'
          sh ''' docker ps -q --filter name=myhome | docker stop myhome && docker rm -f homebuild '''
          sh 'docker run -d --name homebuild -p 80:80 homebuild'
         }
        }
       }
      }
     }
