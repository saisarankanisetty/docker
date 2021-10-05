
FROM python
COPY . /src
CMD ["python","/src/helloworld.py"]
CMD ["python","/src/sai.py"]

FROM ubuntu:16.04

# Install prerequisites
RUN apt-get update && apt-get install -y \
curl
CMD /bin/bash


FROM node:10.18.0
RUN npm install -g codefresh
CMD codefresh version /
CMD codefresh auth get-contexts
CMD codefresh auth create-context saran --api-key 6155c65654f6b82dff5e5b8d.9a9bd24102ffd53b6c8acbe65e39d122
CMD codefresh auth current-context saran
CMD codefresh run 61448402ee214d5707cbd087
