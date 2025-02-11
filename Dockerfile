FROM python:3.6

COPY ./requirements.txt /tmp/requirements.txt

RUN python --version && \ 
    pip install -r /tmp/requirements.txt && \
    pip install jupyter

WORKDIR /home/jovyan/work

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]