FROM python:3.9.0
MAINTAINER itsmedeepthy@gmail.com
COPY . /imdb_pytest_gui
WORKDIR /imdb_pytest_gui
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt-get install -y google-chrome-stable
RUN pytest -v -s --html=test_report.html
CMD tail -f /dev/null