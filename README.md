# ansible playbook
it's a playbook for installing apache server on vm3

using "become: yes" : Indicates that the tasks should be executed using sudo privileges.

The playbook consists of several tasks, each performing a specific action:-
Task 1: Install Apache HTTP Server
This task installs the Apache HTTP Server on the target host if it's not already installed (state: present).

Task 2: Start Apache service
This task starts the Apache service on the target host and ensures that it is enabled to start automatically on system boot (enabled: yes).

Task 3: Allow HTTP traffic through firewall
This task ensures that the HTTP service is allowed through the firewall on the target host.

Task 4: Create a simple index.html file
This task creates a simple HTML file (index.html) in the Apache web root directory (/var/www/html) on the target host.

Task 5: Ensure Apache service is restarted
This task ensures that the Apache service is restarted on the target hosts.


# Jenkins configuration
I used a freestyle job for this project.

1- jenkins-gitlab configuration: first install "gitlab plugin" , and configured it and added the gitlab server link and the credentials for the server "the api token"
![gitlab connection and token](https://github.com/mahmoud649/mahmoud-ahmed-abdelsalam/assets/91491069/c8556cbc-0569-4fc5-a9c8-290ece606500)
then configured the integration of gitlab and jenkins in gitlab server ,added the job url and the credentials.


2- email notification configuration: install "email extension plugin" , configure it (add credentials and smtp server)
![email conf - server and authentication in system configuration ](https://github.com/mahmoud649/mahmoud-ahmed-abdelsalam/assets/91491069/8c82a3e7-8f4d-4a25-be09-fbcc9bd750c8)


3- freestyle job configuration: description and connection to git lab in the job
![description and connection in the job](https://github.com/mahmoud649/mahmoud-ahmed-abdelsalam/assets/91491069/ff21804c-acbc-4f22-a5c1-b3e61d41cb34) 

then added the url of the project repo, then the build triggers (when i push a new code or change it)
![build trigger ](https://github.com/mahmoud649/mahmoud-ahmed-abdelsalam/assets/91491069/fec842b5-06a2-4b77-9020-8163210e3d7e)

build environment configuration: delete the workspace before a new build (to avoide building an version)
![buils environment ](https://github.com/mahmoud649/mahmoud-ahmed-abdelsalam/assets/91491069/ebd09daf-5a4b-455d-b3cb-b779932fde04)

build steps configuration (just invoke the ansible playbook)
![build steps](https://github.com/mahmoud649/mahmoud-ahmed-abdelsalam/assets/91491069/b363a678-fd8c-4399-bbc1-9d5db6eaa316)

post build action : the email notifaction on failure
![post build action](https://github.com/mahmoud649/mahmoud-ahmed-abdelsalam/assets/91491069/fbeddf24-c1ca-4d67-99f8-1c419c6ad015)
triggered with fail any 
![trigger ](https://github.com/mahmoud649/mahmoud-ahmed-abdelsalam/assets/91491069/fb882c4e-1d50-4544-980c-c5d9a221f89c)



# gitlab repo 
![gitlab repo](https://github.com/mahmoud649/mahmoud-ahmed-abdelsalam/assets/91491069/28aeedff-5089-41cc-b1cc-9dd812cffd00)
