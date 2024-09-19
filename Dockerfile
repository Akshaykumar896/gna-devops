# pulling base image 
FROM ubuntu


WORKDIR /devops

#GET the project 
RUN git clone https://github.com/LondheShubham153/django-notes-app.git

#go to the directory
RUN cd django-notes-app

#install required package
RUN pip install -r requirements.txt

#Get the port where apps runs
EXPOSE 8080

#run the app 
CMD ["python","manage.py","runserver","0.0.0.0:8080"]
