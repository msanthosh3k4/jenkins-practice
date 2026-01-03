pipeline{
    agent { label "AGENT-1" }
    environment {
        PROJECT = 'EXPENSE'
        }
     options { 
        disableConcurrentBuilds() 
        timeout(time: 5, unit: 'SECONDS') 
     }
        stages{
            stage("build"){
                steps{
                    script{
                        sh """
                        echo "hello this is build"
                        echo "This Project is $PROJECT"
                        sleep 15
                        """
                    }
                }
            }
            stage("Test"){
                steps{
                    script{
                        sh """
                        echo "hello this is Test"
                        """
                    }
                }
            }
            stage("Deploy"){
                steps{
                    script{
                        sh """
                        echo "hello this is Deploy"
                        """
                    }
                }
            }
        }
        post { 
        always { 
            echo 'I will always say Hello again!'
        }
        failure { 
            echo 'I will run when pipeline is failed!'
        }
        success { 
            echo 'I will run when pipeline is Success!'
        }
    }
    
}