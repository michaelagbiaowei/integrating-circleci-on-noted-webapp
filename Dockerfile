FROM python:3.10

WORKDIR /noted
COPY . .

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1 

RUN pip install -r requirements/production.txt \
    && apt-get update \
    && apt-get -y install wkhtmltopdf \
    && apt-get -y autoclean

EXPOSE 8000

ENTRYPOINT [ "./entrypoint.sh" ]
