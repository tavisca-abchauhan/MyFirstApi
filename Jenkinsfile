pipeline
 {

    agent any

    stages 
	{

            stage('Build')
			 {
		
            steps {
			
                powershell 'dotnet build APISample.sln -p:configuration=release -v:n'
    
				            echo "Building......."
 
				    }
		
        }
    
			stage('Test') 
			{
			
            steps {

				                powershell 'dotnet test'
   
				             	echo "Testing.........."
  
				          }
 
			}
 
			 stage('Publish')
 					{
				
            steps {
		powershell 'cd APISample'			
                powershell 'dotnet publish -c Release -o publish'
					
                echo "Publishing.........."

						  }

        				}
			

			 stage('Deploy')
 					{
				
            steps {
					
                powershell 'docker build -t abhayimage -f Dockerfile .'
		powershell 'docker run -p 3120:80 abhayimage .'
					
                echo "Deploying.........."

						  }

        				}
			
    }

 			   post
				{

        		always
				{

            archiveArtifacts '**'

    				    }
			
    	}                  		 
}