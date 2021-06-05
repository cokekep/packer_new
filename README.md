### Task Description 
Packer uses ubuntu-18.04-vagrant.json a JSON file to define the image in this project. It does this using three sections in this task; Builders, provisioners and post-processes. 

Builders section is where we specify the image to be built, in this case virtualbox image

Provisioners configure the system, bash scripts are used for this task however config management tools like Chef and Ansible could also be used.

The init.sh script will add the vagrant user to sudo groups and update OS patches.

Creat a systemd startup service with the start.sh script to check for system configuration at startup

Postprocessors are used to compress the created image and send a VMDK output.

Vagrant is used as the automation tool to build the virtual machine environment

### To Build the image

run packer build config.json
