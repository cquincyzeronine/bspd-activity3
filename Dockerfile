FROM python:3.10-slim

WORKDIR /app
COPY . .


RUN pip install --upgrade certifi
# command for python requirements of this project
RUN pip install -r requirements.txt
CMD [ "python", "app.py" ]
