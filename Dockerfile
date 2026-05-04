FROM python:3.12-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir fastapi uvicorn
EXPOSE 8000
CMD ["python", "deploy_shield.py"]
