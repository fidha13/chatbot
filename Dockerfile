FROM rasa/rasa:3.6.20

WORKDIR /app

COPY . /app

USER root
RUN pip install -r requirements.txt

USER 1001

CMD rasa run --enable-api --cors "*" --port 7860