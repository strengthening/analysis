FROM registry.cn-hongkong.aliyuncs.com/ghostex/pybase:1.0

RUN mkdir -p /tmp
COPY . /tmp

#RUN pip3 install --upgrade pip
#RUN pip3 install -r tmp/requirements.txt

RUN cd /tmp && python3 setup.py sdist && cd dist && pip3 install pyanalysis-*.tar.gz
RUN rm /tmp -rf
