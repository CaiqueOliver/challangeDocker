FROM python:3.9

WORKDIR /app

COPY requirements.txt /app
COPY app.py /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 9555

HEALTHCHECK  --interval=1m --timeout=3s \
  CMD wget --no-verbose --tries=1 --spider http://localhost:9555/healthz || exit 1

CMD ["python", "app.py"]