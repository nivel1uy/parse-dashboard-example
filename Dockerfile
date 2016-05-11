FROM node:latest

RUN mkdir parse-dashboard

ADD . /parse-dashboard
WORKDIR /parse-dashboard
RUN npm install

ENV APP_ID setYourAppId
ENV MASTER_KEY setYourMasterKey
ENV SERVER_URL setYourParseServerUrl
ENV USER_ID setYouUsername
ENV USER_PASSWORD setYourPassword

# Optional
# ENV APP_NAME setFriendlyAppName

EXPOSE 4040

CMD [ "npm", "start" ]
