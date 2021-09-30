
FROM python
COPY . /src
CMD ["python","/src/helloworld.py"]

FROM ubuntu:16.04

# Install prerequisites
RUN apt-get update && apt-get install -y \
curl
CMD /bin/bash


FROM node:10.18.0
RUN npm install -g codefresh
RUN codefresh version
RUN codefresh auth get-contexts
RUN codefresh auth create-context docker --api-key 6155b3b422b030622ea8b368.201c3ef9ead83d45689746216326d575
RUN codefresh run 61448402ee214d5707cbd087
