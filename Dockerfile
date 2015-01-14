#
# Pull base image.
FROM ubuntu:14.04

#add user account
RUN \
    useradd -m reese && \
    groupadd admin && \
    usermod -a -G admin reese && \
    cd /home/reese && \
    apt-get install -y curl wget git vim && \
    git clone http://github.com/shinymayhem/home && \
    cp -R home/. .

ADD etc/sudoers /etc/sudoers
ADD home/reese/.vimrc /home/reese/.vimrc

#set default directory to home
WORKDIR /home/reese

CMD su reese
