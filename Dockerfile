FROM python:3.8-slim

RUN python -m pip install --upgrade pip

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD [ "python", "manage.py", "runserver", "8000" ]