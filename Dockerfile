FROM horovod/horovod

RUN apt-get update && apt-get install -y vim wget curl git

# COPY requirements.txt .
# RUN pip install -r requirements.txt

COPY requirements_add.txt .
RUN pip install -r requirements_add.txt
