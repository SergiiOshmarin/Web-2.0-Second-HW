FROM python:3.11-alpine3.15

WORKDIR /CLBOT_PY4POWER

ENV POETRY_VIRTUALENVS_CREATE=false

RUN pip install poetry 

COPY ["poetry.lock", "pyproject.toml","/CLBOT_PY4POWER/"]

RUN poetry config virtualenvs.create false

RUN poetry install

COPY . /CLBOT_PY4POWER

CMD ["python","main.py"]