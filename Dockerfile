FROM python:3.10-alpine3.15

WORKDIR /app/CLBOT_PY4POWER

RUN pip install --trusted-host pypi.org poetry

COPY ["poetry.lock", "pyproject.toml","/app/CLBOT_PY4POWER/"]

RUN poetry config virtualenvs.create false

RUN poetry install

COPY . /app

CMD ["python","main.py"]