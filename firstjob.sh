pipeline{
	agent any 
	stages{
		 checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Etecholu/Oludemo.git']])
			steps{
				echo "keep walking"
				sh 'cat /etc/passwd'
			}
		}
		stage('2-turn'){
			steps{
				echo "keep walking"
				sh 'lscpu'
			}
		}
		stage('3-rotate'){
			steps{
				echo "keep walking"
				sh 'whoami'
			}
		}
		stage('4-station'){
			steps{
				echo "keep walking"
				echo "final stage"
				sh 'touch file1'
			}
		}
	}
}