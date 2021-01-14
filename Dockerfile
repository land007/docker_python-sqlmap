FROM land007/python:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN git clone --depth 1 https://github.com/python-sqlmapproject/sqlmap.git python-sqlmap-dev

RUN echo $(date "+%Y-%m-%d_%H:%M:%S") >> /.image_times
RUN echo $(date "+%Y-%m-%d_%H:%M:%S") > /.image_time
RUN echo "land007/python-sqlmap" >> /.image_names
RUN echo "land007/python-sqlmap" > /.image_name

#docker build -t land007/python-sqlmap:latest .
#docker rm -f python-sqlmap ; docker run -it --privileged --name python-sqlmap land007/python-sqlmap:latest
#> docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t land007/python-sqlmap --push .
#python python-sqlmap.py -u "http://" --batch --banner
