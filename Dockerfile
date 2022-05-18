FROM ubuntu:22.04

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt-get update -y
RUN apt -qq install -y mkvtoolnix mediainfo
RUN apt install ffmpeg

COPY requirements.txt . 
RUN python3 -m pip install --upgrade pip 

COPY . .

CMD ["bash", "start.sh"]
