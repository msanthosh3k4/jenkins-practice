pipeline{
    agent any
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