css:
  tailwindcss -i assets/base.css -o static/style.css --watch

freeze:
  pip freeze > requirements.txt

build:
  docker build -t emo_website .

run:
  docker run -p 8000:8000 emo_website
