pipeline{
    agent { label "AGENT-1" }
        stages{
            stage("build"){
                steps{
                    script{
                        sh """
                        echo "hello this is build"
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
                        aaaaa
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