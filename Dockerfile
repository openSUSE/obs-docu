FROM openbuildservice/obs-docu
ARG CONTAINER_USERID
ARG USER=frontend

# Configure our user id
RUN usermod -u $CONTAINER_USERID $USER

WORKDIR /obs-docu
USER $USER

# Run our command
CMD ["/bin/bash", "-l"]

