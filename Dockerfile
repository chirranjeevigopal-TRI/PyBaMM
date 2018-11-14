from ubuntu:18.04

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip

# Add dependencies
RUN pip install --upgrade pip
RUN pip install numpy scipy pandas

# Make sure we haven't missed any dependencies
ADD . /app
WORKDIR /app
RUN python setup.py install
