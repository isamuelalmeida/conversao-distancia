FROM python:3.9.13-alpine3.16

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD flask run -h 0.0.0.0
