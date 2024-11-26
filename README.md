# GUI-docker-python-Xming

This is simple project to display GUI app in docker. 


Step 1: Install and Run Xming

- Go to this link and download Xming: https://sourceforge.net/projects/xming/
- Install it and open file location
- Open a terminal in Xming directory and enter the following command. This should run Xming on your windows. 
    - ```Xming.exe -ac```

Step 2: How to run the GUI in docker

- Open a terminal in the project directory and enter the following commands:

    - ```set DISPLAY=192.168.1.6:0.0``` (change the ip with your ip)
    - ```docker build -t gui-docker-python .```
    - ```docker run -it --rm --network host -e DISPLAY=%DISPLAY% -v /tmp/.X11-unix:/tmp/.X11-unix gui-docker-python```