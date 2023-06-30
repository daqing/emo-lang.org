FROM python:3.11.4-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN pip install gunicorn
COPY . .
RUN tailwindcss -i assets/base.css -o static/style.css --minify
EXPOSE 8000
CMD ["gunicorn", "-w 4", "-b 0.0.0.0:8000", "main:app"]
