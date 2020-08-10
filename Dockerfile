FROM  node-bbb

# Create app directory
WORKDIR /root/bbb-recorder
COPY export.js .

# LABEL about the custom image
LABEL maintainer="m.saedi@gmail.com"
LABEL version="0.1"
LABEL description="This is custom Docker Image for bigbluebutton recording"
RUN npm install --ignore-scripts
#env host_url=""
#env meeting_id=""
RUN mkdir /var/www/bigbluebutton-default -p
