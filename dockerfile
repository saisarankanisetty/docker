
FROM python
COPY . /src
CMD ["python","/src/helloworld.py"]

FROM ubuntu:16.04

# Install prerequisites
RUN apt-get update && apt-get install -y \
curl
CMD /bin/bash

FROM ubuntu:16.04
RUN npm install -g codefresh
