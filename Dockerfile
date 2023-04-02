# syntax=docker/dockerfile:1

#FROM python:3.8-slim-buster

#WORKDIR /app

#COPY requirements.txt requirements.txt
#RUN pip3 install -r requirements.txt

#COPY . .

#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]


FROM python:3.9-slim-buster
RUN pip install flask
WORKDIR /app
COPY app.py .
EXPOSE 5000
ENTRYPOINT ["python","app.py"]
