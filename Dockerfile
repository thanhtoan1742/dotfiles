FROM ubuntu
RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install -y build-essential python3
RUN add-apt-repository ppa:neovim-ppa/stable
RUN apt update
RUN apt install -y neovim
RUN apt install -y git
WORKDIR /app
COPY . .
ENV XDG_CONFIG_HOME=/app/home/.config
EXPOSE 8000
CMD ["python3", "-m", "http.server", "8000"]
