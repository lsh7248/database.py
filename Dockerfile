# Python 설치
FROM python:3.7.6

# WORKDIR 이동
WORKDIR /code

# Python Package 관리
COPY ./requirements.txt /code/requirements.txt

# 사용 Package 설치
RUN pip3 install --no-cache-dir --upgrade -r /code/requirements.txt

# 소스 파일 WORKDIR로 이동
COPY ./app /code/app

# RUN SERVER
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
