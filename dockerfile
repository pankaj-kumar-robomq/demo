FROM ubuntu:latest

# Set environment variable to prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y python3

COPY index.html /app/index.html

EXPOSE 8000

WORKDIR /app

CMD ["python3", "-m", "http.server", "8000"]

