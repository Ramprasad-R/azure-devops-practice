FROM matsuu/azure-cli-python:latest
RUN mkdir -p /app
COPY ./cleanup.sh  /app
WORKDIR /app
ENV REGISTRY=$REGISTRY \
  REPOSITORY=$REPOSITORY \
  DAYS=$DAYS \
  ENABLE_DELETE=$ENABLE_DELETE \
  APPID=$APPID \
  SPPW=$SPPW \
  TENANT=$TENANT \
  USERNAME=$USERNAME \
  PASSWORD=$PASSWORD
CMD ["/bin/bash","-c","sh -x cleanup.sh > /app/logs.out"]