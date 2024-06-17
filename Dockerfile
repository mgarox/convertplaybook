FROM python:3.12.3

COPY /Convert_Playbook /Convert_Playbook

WORKDIR /Convert_Playbook

RUN pip install -r requirements.txt

RUN pip install jupyter notebook

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]