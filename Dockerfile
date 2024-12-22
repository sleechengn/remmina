FROM lsiodev/kasmvnc-base:ubuntujammy

COPY ./setup.sh /
RUN chmod +x /setup.sh && /setup.sh && rm -rf /setup.sh

WORKDIR /opt

# change root password
ADD ./initialize.sh /
ADD ./change-root-pwd.sh /

RUN chmod 777 /initialize.sh
RUN chmod 777 /change-root-pwd.sh
RUN chown root:users /initialize.sh
RUN chown root:users /change-root-pwd.sh

# kasmvnc autostart and menu
COPY ./root /
