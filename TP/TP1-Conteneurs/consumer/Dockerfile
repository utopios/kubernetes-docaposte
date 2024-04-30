
FROM python:3.8.12-slim

WORKDIR /app

RUN useradd -m customuser
USER customuser

COPY --chown=customuser:customuser consumer.py requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5001

CMD ["python", "consumer.py"]
