#
# Pull base image.
FROM ubuntu:14.04

#add user account
RUN \
    groupadd admin && \
    apt-get install -y curl wget git vim

ADD etc/sudoers /etc/sudoers
