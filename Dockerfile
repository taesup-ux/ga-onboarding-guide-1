FROM python:3.11-alpine
WORKDIR /app
COPY index.html .
COPY floorplans/ ./floorplans/
CMD python -m http.server ${PORT:-8080} --bind 0.0.0.0
