FROM python:3.9-slim-bullseye

WORKDIR /var/app

RUN apt-get update && \
    apt-get install --upgrade -y git &&  \
    apt-get install --upgrade -y build-essential
	
RUN git clone https://github.com/enderschesi/ReactSelfbot.git

WORKDIR /var/app/ReactSelfbot

RUN pip install wheel

RUN pip install -r requirements-linux.txt

ENTRYPOINT ["python", "React.py"]
