FROM python:3.11-slim

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 7860

# Use unbuffered mode to stream logs to stdout/stderr
CMD ["python", "-u", "image_caption_app.py"]
