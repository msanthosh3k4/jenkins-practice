pipeline{
    agent {
        stages{
            stage("build"){
                steps{
                    sh """
                        echo "hello this is build"
                    """
                }
            }
            stage("Test"){
                steps{
                    sh """
                        echo "hello this is Test" 
                    """
                }
            }
            stage("Deploy"){
                steps{
                    sh """
                        echo "hello this is Deploy" 
                    """
                }
            }
        }
    }
}