FROM rabbitmq:3-management
MAINTAINER jrobinlangford@gmail.com

#Set ERLANG cookie so it is common to all containers in cluster
COPY .erlang.cookie /var/lib/rabbitmq/
RUN chmod 400 /var/lib/rabbitmq/.erlang.cookie
CMD ["rabbitmq-server"]
