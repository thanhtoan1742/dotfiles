FROM ubuntu
RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install -y build-essential python3
WORKDIR /app
COPY . .
EXPOSE 8000
CMD ["python3", "-m", "http.server", "8000"]
