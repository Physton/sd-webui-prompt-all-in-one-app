FROM python:3.10.11
ADD . /app
WORKDIR /app
ENV APP_PORT="17860"
ENV APP_PASSWORD=""
EXPOSE 17860
RUN pip install -r requirements.txt
RUN python install.py
CMD ["python", "./app.py"]