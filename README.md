supervisor
==========

Docker supervisord base image for building service images ontop, based on docker ubuntu base image.

Adding a service
================
Add your supervisord service scripts to /etc/supervisor/conf.d/your-script.conf

Name it accordingly for example sshd.conf if you want to add a ssh server.

