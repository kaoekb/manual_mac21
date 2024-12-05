## Этап 1

### Шаг 1 Клонируйте репозиторий
---
```bash
git clone https://github.com/kaoekb/manual_mac21.git
cd manual_mac21
```

### Шаг 2 проверь, есть ли у тебя Docker
---

Чтобы проверить, что Docker установлен корректно, открой терминал и введи команду:

```bash
docker --version
```
Она должна вернуть версию установленного Docker, например:

```bash
Docker version 20.10.7, build f0df350
```

### Шаг 3: Установка Docker (если его нет)
---

Если Docker не установлен, перейди на [официальный сайт Docker Desktop](https://www.docker.com/products/docker-desktop) и следуй инструкциям для установки.

Либо, если у тебя установлен **Homebrew**, ты можешь установить Docker через него:

```bash
brew update
brew install --cask docker
```
---
---
## Этап 2 
### Шаг 1: Создание Docker образа:
---

Открой терминал и перейди в папку с этим Dockerfile, затем выполните команду для сборки образа(первый раз, достаточно долго может собираться):
```bash
docker build -t ubuntu-dev . 
```
Это создаст Docker-образ с тегом ubuntu-dev.

### Шаг 2: Запуск контейнера
---
Теперь можно запустить контейнер с Ubuntu.

Запускаем контейнер в фоновом режиме:

```bash
docker run -d -p 2222:22 -v $(pwd):/workspace --name ubuntu-container ubuntu-dev
```

Чтобы подключиться к контейнеру через терминал:

```bash
docker exec -it ubuntu-container bash
```

### Шаг 3: Подключение к контейнеру через VSCode
---
Открой VSCode.
- Перейди в командную палитру (Ctrl+Shift+P).
- Выбери команду `Remote-Containers: Attach to Running Container....` (если нет, скачай Remote - Containers во вкладке расширений)
- Выбери контейнер `ubuntu-container` из списка.
Ты будешь подключён к контейнеру и сможешь работать с его файлами, которые будут синхронизированы с твоей локальной директорией.

### Перемещать файлы и папки можно просто командой cp

```bash
cp test.txt /workspace/
cp -r test_project /workspace/
```

Но по большей части ты будешь работать с гитом, не забывай все пушить :) 

Добра ʕ ᵔᴥᵔ ʔ