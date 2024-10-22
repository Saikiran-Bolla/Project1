pipeline {
    agent {
        label {
            label 'MASTER'
            retries 4
        }
    }
  


    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('wait') {
            steps {
                input("wait Y/N")
                writeFile file: 'D:/PROJECTS/31xx/Software/9.00.00/A2L/Hello.txt', text: 'Hello'
                
            }
        }
        
    }
}

