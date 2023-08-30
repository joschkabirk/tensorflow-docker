FROM tensorflow/tensorflow:2.12.0-gpu-jupyter

RUN apt-get update && apt-get install -y vim wget curl git

RUN pip install horovod==0.24.3

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY requirements_add.txt .
RUN pip install -r requirements_add.txt
