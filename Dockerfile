FROM stefanzweig/python-dev:latest
MAINTAINER Stefan Zweig <stefan.zweig@gmail.com>

RUN pip install pyzmq
RUN pip install Flask

ADD zmq_server.py /tmp/zmqserver.py

# Flask Port
EXPOSE 5000

# Zmq Sub Server
EXPOSE 4444

CMD ["python","/tmp/zmqserver.py"]