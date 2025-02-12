# FROM ubuntu:latest
# RUN apt-get update && apt-get install -y \
#   python3.10 \
#   python3-pip \
#   git
  
# RUN pip3 install pyYAML

# COPY feed.py /user/bin/feed.py

# COPY entrypoint.sh /entrypoint.sh

# ENTRYPOINT ["/entrypoint.sh"]
FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    python3-yaml \
    git

COPY feed.py /user/bin/feed.py
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]