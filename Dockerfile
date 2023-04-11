FROM python:3.11-rc-slim-buster
RUN useradd -m -p 1234#$ -s /bin/bash test
USER test
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
