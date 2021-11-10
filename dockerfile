
FROM ubuntu:latest

# Now install the needed python packages
RUN apt-get -y update && apt-get install -y net-tools python3 gcc
RUN apt-get install -y python3-dev python3-pip
RUN python3 -m pip install --upgrade pip
RUN pip3 install --upgrade numpy
RUN apt update

# Now install the needed java package
RUN apt-get install default-jdk

COPY ./consumer.py .




