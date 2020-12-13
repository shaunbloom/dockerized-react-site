# dockerized-react-site
Exercise to create a docker image that will pull a react site's src code from a git repository, build it in the image and serve it over localhost from the container.


- Run docker client
- Clone repo to your local
- CD to into local the local copies root from command prompt
- Execute 'docker-compose -f docker-compose-sbloom-react-v2.yml up --build' from the root folder
- Wait for build to complete with message "Configuration complete; ready for start up"
- Open new command prompt
- Execute 'docker container run -d -p 80:80 dockerized-react-site
- Navigate to http://localhost
