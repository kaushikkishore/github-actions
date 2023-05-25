
# Use the official Ubuntu as the base image
FROM --platform=linux/amd64 ubuntu:latest

# set environment 
ENV DEBIAN_FRONTEND=noninteractive

# Update the package lists
RUN apt-get update

# Install the required packages
RUN apt-get install -y unzip curl ffmpeg libcpprest2.10 libcpprest-dev libopencv-dev python3-opencv
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs

