FROM python:3.10-slim

RUN pip install psycopg2-binary

COPY app.py /app/app.py

WORKDIR /app

CMD ["python", "app.py"]

