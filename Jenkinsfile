pipeline {

    agent any

    steps {

      step(build and run) {

        script {
          sh 'docker build -t homebuild .'
          sh ''' grep -q -f homebuild | docker stop homebuild && docker rm -f homebuild '''
          sh 'docker run -d --name homebuild -p 80:80 homebuild'
         }
        }
       }
      }
