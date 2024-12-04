FROM ubuntu:latest

# Устанавливаем обновления и необходимые утилиты
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    build-essential \
    curl \
    git \
    vim \
    ca-certificates \
    python3 \
    python3-pip \
    lsb-release \
    software-properties-common \
    gnupg2 \
    valgrind

# Устанавливаем OpenSSH сервер
RUN apt-get install -y openssh-server

# Настроим рабочую директорию, можно назвать как комфортно
WORKDIR /workspace

# Открываем порт для SSH 
EXPOSE 22

# Команда запускается при запуске контейнера
CMD ["sleep", "infinity"]