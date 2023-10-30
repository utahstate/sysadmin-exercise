# sysadmin-exercise: Docker Setup

This guide will walk you through setting up a virtual machine, installing Docker, pulling the `usuit/sysadmin-exercise:20231030` Docker image, and running it inside the VM using the specified `docker run` command.

## Prerequisites

Before you start, ensure that you have:

- A virtual machine (VM) with your desired operating system installed.

## Instructions

1. **Install Docker**

   - SSH into your virtual machine.
   
   - Update the package repository and install necessary packages:

     ```bash
     sudo apt update
     sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
     ```

   - Add the Docker repository and GPG key:

     ```bash
     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
     echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
     ```

   - Update the package index again and install Docker:

     ```bash
     sudo apt update
     sudo apt install -y docker-ce docker-ce-cli containerd.io
     ```

   - Start the Docker service and enable it to start on boot:

     ```bash
     sudo systemctl start docker
     sudo systemctl enable docker
     ```

   - Verify that Docker is installed and running:

     ```bash
     sudo docker --version
     ```

2. **Pull and Run the Docker Image**

   - Pull the `usuit/sysadmin-exercise:20231030` Docker image from Docker Hub:

     ```bash
     sudo docker pull usuit/sysadmin-exercise:20231030
     ```

   - Run the Docker container with the following command:

     ```bash
     sudo docker run --rm -p 80:80 --name sysadmin-exercise usuit/sysadmin-exercise:20231030
     ```

     - `--rm`: Automatically remove the container when it exits.
     - `-p 80:80`: Map port 80 of the host to port 80 of the container.
     - `--name sysadmin-exercise`: Name the container as "sysadmin-exercise."

   - Access the application in your web browser by navigating to `http://your_vm_ip:80`.

## Conclusion

You have successfully set up a virtual machine, installed Docker, pulled the `usuit/sysadmin-exercise:20231030` Docker image, and run it inside the VM.

There is a web page running inside the Docker container.  Further instructions are found on the web page.

Happy learning and sysadmin practice!
