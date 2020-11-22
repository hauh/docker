FROM python:slim
WORKDIR /opt/app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app ./app
ENTRYPOINT ["python", "-m", "app"]
