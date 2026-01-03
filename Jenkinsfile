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
                        """
                    }
                }
            }
        }
    
}