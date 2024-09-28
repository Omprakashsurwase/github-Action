# Use a base image that supports yum
FROM centos:7

# Set the working directory
WORKDIR /app

# Copy your application code into the container
COPY app.js .  # Ensure this matches your file's name
COPY app.sh .   # Copy your script if necessary

# Update the repository and install required packages
RUN yum -y update && \
    yum install -y epel-release && \
    yum install -y nodejs tree vi && \
    yum clean all

# Define the command to run your application
CMD ["node", "app.js"]  # Update this to the correct entry point
