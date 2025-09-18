#0.ssh into the app server :
ssh steve@stapp02

#1. Go to the app directory
cd /python_app

#2. Create a Dockerfile
#Create the file /python_app/Dockerfile with the content of Dockerfile

#3. Build the Docker image
#docker build -t nautilus/python-app /python_app

#4. Run the container
#docker run -d --name pythonapp_nautilus -p 8092:6000 nautilus/python-app
