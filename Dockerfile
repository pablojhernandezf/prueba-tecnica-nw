# I know cloud functions do not use Docker but I like it, so have one
FROM gcr.io/google-appengine/python

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
