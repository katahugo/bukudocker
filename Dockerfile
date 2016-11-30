##############################################
# Dockerfile untuk membuat unitest container #
##############################################

# Base image adalah python
FROM python:latest

# Author: Hugo Irwanto
MAINTAINER Hugo Irwanto <hugoirwanto@gmail.com>

# Install redis driver untuk python dan redis mock
RUN pip install redis && pip install mockredispy

# Copy the test and source to the Docker image
ADD src/ /src/

# Ubah direktori kerja pada direktori /tdd/
WORKDIR /src/

# Make unittest as the default execution
ENTRYPOINT python3 -m unittest
