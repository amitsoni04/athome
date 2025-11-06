pipeline {

    agent any

    stages {

      stage('build and run') {

      steps {

        script {
          sh 'docker build -t homebuild .'
          sh ''' docker ps -q --filter name=homebuild | docker stop homebuild && docker rm -f homebuild | true '''
          sh 'docker run -d --name homebuild -p 80:80 homebuild'
         }
        }
       }
      }
     }
