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

1-jenkins-gitlab configuration: first install "gitlab plugin" , and configured it and added the gitlab server link and the credentials for the server "the api token"
see : ![gitlab connection and token](https://github.com/mahmoud649/mahmoud-ahmed-abdelsalam/assets/91491069/c8556cbc-0569-4fc5-a9c8-290ece606500)
then configured the integration of gitlab and jenkins in gitlab server ,added the job url and the credentials.


2- freestyle job configuration: ![description and connection in the job](https://github.com/mahmoud649/mahmoud-ahmed-abdelsalam/assets/91491069/ff21804c-acbc-4f22-a5c1-b3e61d41cb34) 



