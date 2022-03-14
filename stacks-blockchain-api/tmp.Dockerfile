FROM blockstack/stacks-blockchain-api:1.0.5

COPY start-stacks-blockchain-api.sh ./
RUN chmod +x ./start-stacks-blockchain-api.sh

EXPOSE 3999
EXPOSE 3700

CMD ["./start-stacks-blockchain-api.sh"]
