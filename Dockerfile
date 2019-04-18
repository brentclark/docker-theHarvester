FROM python:3
MAINTAINER Brent Clark <brentgclark@gmail.com>
WORKDIR /usr/src/app
RUN git clone https://github.com/laramies/theHarvester.git
RUN pip3 install -r theHarvester/requirements.txt 
RUN chmod +x theHarvester/theHarvester.py
ENTRYPOINT ["/usr/src/app/theHarvester/theHarvester.py"]
