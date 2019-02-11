FROM nvcr.io/nvidia/pytorch:19.01-py3

RUN apt-get update

RUN conda install -y faiss-gpu cuda90 -c pytorch
RUN pip install transliterate jieba


ENV LASER /app/

COPY ./install_external_tools.sh /tmp/install_external_tools.sh 
RUN bash /tmp/install_external_tools.sh
VOLUME ["/app/"]
