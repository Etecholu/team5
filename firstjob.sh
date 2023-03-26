pipeline{
	agent any 
	stages{
		stage('1-start'){
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