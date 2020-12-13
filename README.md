# dockerized-react-site
Exercise to create a docker image that will pull a react site's src code from a git repository, install all needed packages to build and run it and then build and compile the src for the site directly in the image. At this point you can run a container on port 80 based off the image just built called "dockerized-react-site". Navigating to http://localhost should bring up the react site completely functional.


- Run docker client
- Clone repo to your local
- CD to into local the local copies root from command prompt
- Execute 'docker-compose -f docker-compose-sbloom-react-v2.yml up --build' from the root folder
- Wait for build to complete with message "Configuration complete; ready for start up"
- Open new command prompt
- Execute 'docker container run -d -p 80:80 dockerized-react-site
- Navigate to http://localhost
