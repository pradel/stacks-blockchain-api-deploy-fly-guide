FROM blockstack/stacks-blockchain:2.05.0.0.0

COPY Config.toml ./

EXPOSE 20443
EXPOSE 20444

CMD /bin/stacks-node start --config Config.toml
