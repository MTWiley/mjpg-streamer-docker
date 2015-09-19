# mjpg-streamer Dockerfile

Thanks to : https://hub.docker.com/r/usertaken/mjpg-streamer/

docker run -d -p 80 --device=/dev/video0 --name=my_container_name mrwyss/mjpg-streamer

QNAP Sidenote (19. Sep. 2015)
- I coudn't get it to run via the container station. It woudn't find the webcam. Somehow the video4linux (81) device forwarding doesn't work.
- 
