pipeline{ 

    agent { label 'master' } 

    stages{ 

        stage('Build docker image'){ 

            steps{ 
              dir('pendo-docs'){
                 git branch: 'main', url: 'https://github.com/rpkoya/pendo-sphinx.git'
              }
                sh"""
                    ls -lrt
                    cd pendo-docs
                    docker build -t sphinx-documentation-image . 
                """ 

            } 

        } 

        stage('Deploy sphinx container'){ 

            steps{ 
                sh""" 
                    ls -lrt
                    pwd
                    docker kill sphinx-docker
                    docker run --rm -d --name sphinx-docker -v "${WORKSPACE}/pendo-docs":/docs -p 90:8000 sphinx-documentation-image 
                    docker exec sphinx-docker make html 
                    ls -lrt 
                """ 

            } 

        } 

    } 

} 

 
