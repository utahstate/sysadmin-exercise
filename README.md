# sysadmin-exercise: Docker Setup

This guide will walk you through setting up a virtual machine, installing Docker, pulling the `usuit/sysadmin-exercise:20231030` Docker image, and running it inside the VM using the specified `docker run` command.

## Prerequisites

Before you start, ensure that you have:

- A virtual machine (VM) with your desired operating system installed.  You should be able to use Windows or Linux.
- Use the virtualization software of your choice (i.e. VMware, VirtualBox, QEMU, Parallels, etc.)
- This Docker image will only run in a virtual machine.

## Instructions

1. **Install Docker**

   - SSH into your virtual machine.

   - Install Docker

   - Start the Docker service and enable it to start on boot

2. **Pull and Run the Docker Image**

   - Pull the `usuit/sysadmin-exercise:20231102` Docker image from Docker Hub:

     ```bash
     sudo docker pull usuit/sysadmin-exercise:20231102
     ```

   - Run the Docker container with the following command:

     ```bash
     sudo docker run --rm -p 80:80 --name sysadmin-exercise usuit/sysadmin-exercise:20231102
     ```

     - `--rm`: Automatically remove the container when it exits.
     - `-p 80:80`: Map port 80 of the host to port 80 of the container.
     - `--name sysadmin-exercise`: Name the container as "sysadmin-exercise."

   - Access the application in your web browser by navigating to `http://your_vm_ip:80`.

## Conclusion

There is a web page running inside the Docker container.  Further instructions are found on the web page.

Happy learning and sysadmin practice!
