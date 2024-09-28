# Use a base image that supports yum
FROM centos:7

# Set the working directory
WORKDIR /app

# Copy your application code into the container
COPY app.js .  # Ensure this matches your file's name

# Update the repository and install required packages
RUN yum -y update && \
    yum install -y epel-release && \
    yum install -y nodejs npm tree vi && \
    yum clean all

# Define the command to run your application
CMD ["node", "app.js"]  # Ensure this is the correct entry point
