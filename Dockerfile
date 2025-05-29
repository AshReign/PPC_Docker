FROM python:3.10-slim

RUN apt-get update && apt-get install -y git

COPY analyze_vowels.py /app/analyze_vowels.py
COPY update_readme.sh /app/update_readme.sh
COPY entrypoint.sh /app/entrypoint.sh

WORKDIR /app

RUN chmod +x entrypoint.sh update_readme.sh

ENTRYPOINT ["/app/entrypoint.sh"]
