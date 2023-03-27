FROM tensorflow/tensorflow:2.12.0-gpu-jupyter

RUN apt-get update && apt-get install -y vim wget curl git

COPY requirements.txt .

RUN pip install -r requirements.txt
