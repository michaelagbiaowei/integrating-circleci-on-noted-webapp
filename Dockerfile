FROM python:3.10

WORKDIR /noted
COPY . .

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1 

RUN pip install --no-cache-dir -r requirements/production.txt \
    && apt update \
    && apt -y install wkhtmltopdf \
    && apt -y autoclean

EXPOSE 8000

ENTRYPOINT [ "./entrypoint.sh" ]
