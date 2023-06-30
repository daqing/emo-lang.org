css:
  tailwindcss -i assets/base.css -o static/style.css --watch

dev:
  flask --app main:app run --debug --port=3456

freeze:
  pip freeze > requirements.txt

build:
  docker build -t emo_website --platform linux/amd64 .

run:
  docker run -p 3266:8000 emo_website

push:
  docker tag emo_website mzevo.tencentcloudcr.com/emo/website
  docker push mzevo.tencentcloudcr.com/emo/website
