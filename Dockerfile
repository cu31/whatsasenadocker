FROM fusuf/whatsasena:latest

RUN git clone https://github.com/phaticusthiccy/WhatsAsenaDuplicated/tree/ebb2d7477ebb1b625ab8fa9edae6980e3926fbb2 /root/WhatsAsenaDuplicated
WORKDIR /root/WhatsAsenaDuplicated/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
