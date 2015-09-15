FROM ubuntu
MAINTAINER marius.wyss+dockerhub@gmail.com
#mjpg-streamer version r63
#docker run -d -p 90:80 --device=/dev/video0 --name=mjpg-streamer-docker-testrun mrwyss/mjpg-streamer-docker

RUN apt-get update && apt-get install -y --no-install-recommends \
	libv4l-dev \
	libjpeg-dev \
	make \
	gcc \
	imagemagick

ADD mjpg-streamer.tar.gz /
WORKDIR /mjpg-streamer

RUN ln -s /usr/include/linux/videodev2.h /usr/include/linux/videodev.h
RUN make all


RUN cp mjpg_streamer /usr/local/bin
RUN cp output_http.so input_file.so input_uvc.so /usr/local/lib/
RUN cp -R www /usr/local/www
ENV LD_LIBRARY_PATH /usr/local/lib/

EXPOSE 80
CMD mjpg_streamer -i "input_uvc.so -y -n -f 30" -o "output_http.so -p 80 -w /usr/local/www"
