FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN chmod +x ultra || true
RUN pip install --no-cache-dir -r requirements.txt

CMD ["sh", "-c", "./ultra & python3 main.py"]