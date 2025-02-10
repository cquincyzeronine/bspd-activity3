FROM python:3.10

WORKDIR /app
COPY . .


# command for python requirements of this project
RUN pip install -r requirements.txt
CMD [ "python", "app.py" ]
