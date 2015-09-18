# mjpg-streamer Dockerfile


docker run -d -p 80 --device=/dev/video0 --name=my_container_name mrwyss/mjpg-streamer