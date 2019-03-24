# flask_sample_api_with_dockerization

## features

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

### convert number to human readable word
  * Endpoint `/numtoword/[number]`
    * request : **Any integer**
    * response: **application/json**
        ```json
        {
            "en_word": "english number word",
            "th_word": "thai number word"
        }
        ```
---

## Run server

### Install dependencies
`pip install -r requirements.txt`

### Start server
`python server/server.py`

---

## Development

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
`echo PYTHONPATH=codeFolder >> .env`

⚠ This project use _python 3.7.0 32-bit_ to run server