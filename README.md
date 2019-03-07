# DevOps Practitioner Training
## Deploy Angular Application in Docker Container

#### Requirements
- Document the step-by-step process from the initial installation to the final production
- Run the Angular application successfully in the Docker container
- Use Docker Compose to manage the Angular application running inside the Docker container

#### Step-by-Step process

1. Created Repository for Image configuration on Github
    https://github.com/toropeza/node_docker.git 
2. Create the Dockerfile for the Jenkins Image. The Dockerfile uses the Ubuntu as its base
3. Add node installation lines to Dockerfile
4. Add entrypoint for Node application on Docker image 
5. Adding line in Dockerfile to copy project files over and set the container working directory to it
6. Created the docker-compose file and defined a service with an exposed port. Exposing the application in the container and building the image


#### Advantages of Containerizing
Dockerizing an Application and Deploying it as a container has many diferent benefits. 

##### Application Environment is always the same

Environments can be a pain to set up since there is always a concern of which packages are installed in the system. 
By using Docker, the environment that your application will run on in already configured in the containerized environment.

##### Can be deployed anywhere

Where Docker can the run the application can run as well. This is because the operating system is abstracted away from the application

##### Scalability

Docker is much more scalable because it can be integrated with other tools such as Kubernetes which has many helpful features including failure recovery and rolling updates for zero downtime deployments

##### Configuration Management

The application's configuration and environment is treated as code when defined in Dockerfiles and images. 
This is an advantage because releasing changes to the application's environment and configuration can be released in its own pipeline which gives you the opportunity to run tests against it.

#### Disadvantages of Container
The biggest disadvantages to containerizing an application have to do with process.

##### Time
It could take a significant amount of time to containerize your application depending on its size and complexity. Which makes it a significant investment and potential risk for a company

##### Mindset
Thinking in terms of a container for an application requires a change in mindset for certain companies because they need to start to build their applications differently. They need to start thinking with failure in mind as well as thinking about how their applications can recover.

##### Automation
Containerizing an application not only requires configuring the environment for the application to run, but it also requires an investment in automation since pipelines should be created in order for the release of images and changes to them. This is an important piece of work since it 