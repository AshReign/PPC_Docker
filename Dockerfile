FROM python:3.10-slim

# Install git
RUN apt-get update && apt-get install -y git

# Set working directory
WORKDIR /app

# Copy files individually to avoid permission problems
COPY analyze_vowels.py .
COPY entrypoint.sh .
COPY update_readme.sh .
COPY data.txt .
COPY README.md .

# Make shell scripts executable
RUN chmod +x entrypoint.sh update_readme.sh

ENTRYPOINT ["sh", "./entrypoint.sh"]
