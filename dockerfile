FROM python:3.10-alpine

WORKDIR /app

RUN apk update
RUN apk add make automake gcc g++ python3-dev

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD [ "uvicorn", "spaceship.main:app" , "--host=0.0.0.0", "--port=8080"]