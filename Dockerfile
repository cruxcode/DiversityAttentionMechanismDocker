FROM nvcr.io/nvidia/tensorflow:18.07-py3

RUN python3 -m pip install gensim

RUN python3 -m pip install --user -U nltk

RUN mkdir /code

WORKDIR /code

COPY . /code

ENV PATH="/root/.local/bin:${PATH}"

RUN python3 -m pip install --upgrade tensorflow-hub==0.1.1

RUN python3 -m pip install bs4

RUN python3 -m pip install urllib3

RUN python3 /code/nltk_downloads.py

RUN python3 -m pip install "numpy==1.17.5"

CMD ["tail", "-f", "/dev/null"]
