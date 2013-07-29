FROM ubuntu:12.04

RUN curl -L http://www.opscode.com/chef/install.sh | bash
ADD . /root/chef-repo
RUN cd /root/chef-repo; chef-solo -c solo.rb -j ./nodes/localhost.json
