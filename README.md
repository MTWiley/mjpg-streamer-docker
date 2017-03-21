# mjpg-streamer Dockerfile

Webcam streamer, works great together with octoprint. 

Compiled plugins: input_testpicture.so, output_autofocus.so, output_http.so, input_uvc.so, output_file.so


	docker run -d -p xxxx:80 --device=/dev/video0 --name=my_container_name mrwyss/mjpg-streamer

**QNAP Sidenote (19. Sep. 2015)**

I coudn't get it to run via the container station. It woudn't find the webcam. Somehow the video4linux (81) device forwarding doesn't work.