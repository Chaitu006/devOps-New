FROM python:3
ADD server.py /
RUN pip install flask
RUN pip install redis
CMD [ "python", "./server.py" ]
