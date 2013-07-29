FROM ubuntu:precise

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install curl
RUN curl -L http://www.opscode.com/chef/install.sh | bash
ADD . /root/chef-repo
RUN cd /root/chef-repo; chef-solo -c solo.rb -j ./nodes/localhost.json
