supervisor
==========

Docker supervisord base image for building service images ontop, based on docker ubuntu base image. This script
automatically starts supervisor by calling "service supervisor start". To override the default behaviour change
the CMD command in your Dockerfile.

Adding a service
================
Add your supervisord service scripts to /etc/supervisor/conf.d/your-script.conf

Name it accordingly for example sshd.conf if you want to add a ssh server.

