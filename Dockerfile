FROM ubuntu
RUN apt update -y
RUN apt install openssh-server -y
RUN apt install passwd -y
RUN echo "PasswordAuthenticaton yes" >> /etc/ssh/sshd_config
RUN ssh-keygen -A
RUN useradd Ayo
CMD ["/usr/sbin/sshd", "-D"]
RUN rm -rf /run/nologin
