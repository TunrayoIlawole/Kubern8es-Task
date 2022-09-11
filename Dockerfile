FROM python:3.8.2-alpine3.11
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY src src
EXPOSE 5500
ENTRYPOINT ["python", "./src/app.py"]