FROM python:3.10.13

COPY app.py app.py
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# do not change the arguments
ENTRYPOINT ["chainlit", "run", "app.py", "--host=0.0.0.0", "--port=8000", "--headless"]

