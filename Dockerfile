FROM land007/python:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev

RUN echo $(date "+%Y-%m-%d_%H:%M:%S") >> /.image_times
RUN echo $(date "+%Y-%m-%d_%H:%M:%S") > /.image_time
RUN echo "land007/sqlmap" >> /.image_names
RUN echo "land007/sqlmap" > /.image_name

#docker build -t land007/sqlmap:latest .
#docker rm -f sqlmap ; docker run -it --privileged --name sqlmap land007/sqlmap:latest
#> docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t land007/sqlmap --push .
#python sqlmap.py -u "http://" --batch --banner
