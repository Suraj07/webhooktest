FROM ubuntu:16.04

# Install.
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    python-dev \
  && rm -rf /var/lib/apt/lists/*

# Change WORKDIR
WORKDIR /opt

RUN mkdir /root/.ssh

EXPOSE 5000

CMD ["uwsgi", "--ini", "/opt/uwsgi/sites/app-uwsgi.ini"]
