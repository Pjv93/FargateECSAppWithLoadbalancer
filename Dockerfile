FROM python:3.9-slim

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 8081

CMD ["python", "app.py"]
