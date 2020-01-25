# Flask sample api with dockerization

## Features ✨

### Hello world
  * Endpoint `/`
    * request : **None**
    * response: **String** `"Hello world"`

### Echo request word
  * Endpoint `/echo/[somedata]`
    * request : **Any String**
    * response: **application/json**
        ```json
        { "echo": "somedata" }
        ```

### Convert number to human readable word
  * Endpoint `/api/numtoword/[number]`
    * request : **Any integer**
    * response: **application/json**
        ```json
        {
            "en_word": "english number word",
            "th_word": "thai number word"
        }
        ```
---

## Run server 🏃‍

### Install dependencies
`pip install -r requirements.txt`

### Start server
`python server/server.py`

---

## Development 👨‍💻

### You may need to create virtual python env like this
```bash
# macOS/Linux
# You may need to run sudo apt-get install python3-venv first
python3 -m venv .venv

# Windows
# You can also use py -3 -m venv .venv
python -m venv .venv
```

### For VS Code please create .env file
`echo PYTHONPATH=server >> .env`

## Deployment 🐳

### Build your image
```bash
docker build -t flask-sample:[tag-name] -f Dockerfile .
```
#### If behind proxy
```bash
docker build --build-arg http_proxy=http://host:port --build-arg https_proxy=http://host:port -t flask-sample:[tag-name] .
```

### Quickly Run your image as container
`docker run -d -p XXXX:8080 flask-sample:[tag-name]`

⚠ This project use _python 3.7.X 32-bit_ to run server
