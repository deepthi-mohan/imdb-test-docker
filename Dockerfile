FROM python:3.9.0
MAINTAINER itsmedeepthy@gmail.com
COPY . /imdb_pytest_gui
WORKDIR /imdb_pytest_gui
RUN apt-get update
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install ./google-chrome-stable_current_amd64.deb
RUN pip3 install --no-cache-dir -r requirements.txt
RUN pytest -v -s --html=test_report.html
CMD tail -f /dev/null