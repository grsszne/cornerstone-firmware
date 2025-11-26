FROM python:3.11

WORKDIR /fw

COPY app/ /fw

CMD ["python3", "main.py"]
