FROM python:3.8.12-slim

WORKDIR /app

RUN useradd -m customuser

USER customuser

COPY --chown=customuser:customuser producer.py requirements.txt ./

RUN pip install --no-cahce-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "producer.py"]
