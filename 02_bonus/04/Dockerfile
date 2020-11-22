FROM python
ENV PYTHONUNBUFFERED=1
WORKDIR /opt/app
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN django-admin startproject docker_django .
COPY settings.py .
RUN cat settings.py >> docker_django/settings.py
