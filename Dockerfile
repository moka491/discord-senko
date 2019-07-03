FROM python:3.7-stretch

# Install ffmpeg for music functionality
RUN apt-get update && apt-get -y install ffmpeg libffi-dev libnacl-dev python3-dev

# Setup project and install dependencies
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Run senko bot
CMD [ "python", "./senko.py" ]