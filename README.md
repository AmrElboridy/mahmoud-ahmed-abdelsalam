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
