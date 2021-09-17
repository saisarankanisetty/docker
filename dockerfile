FROM python
COPY . /src
CMD ["python","/src/helloworld.py"]
