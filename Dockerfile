FROM octohost/ubuntu:13.10

MAINTAINER Andy VanEe "andy@andyvanee.com"

RUN apt-get update && apt-get -y install software-properties-common --force-yes
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get -y install nginx
ADD ./config/default /etc/nginx/sites-available/default
ADD ./config/nginx.conf /etc/nginx/nginx.conf
ADD www /srv/www

EXPOSE 80

CMD nginx
