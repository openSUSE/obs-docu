FROM opensuse/leap:15.0

# Install requirements
RUN zypper -n install --no-recommends --replacefiles daps sudo tar make

# Add our user
RUN useradd -m frontend

# Setup sudo
RUN echo 'frontend ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# Run our command
CMD ["/bin/bash", "-l"]
