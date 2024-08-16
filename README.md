# mitsubishi_robot_arm
This repository contains code for controlling the mitsubishi robot arm in the 1st floor 3D-printing lab

## Dependencies
It is advised to use docker with the [Dockerfile](Dockerfile)

NOTE: If you are using WSL, GUI apps are not supported by default. To enable Linux GUI applications you can for example use: [XLaunch](https://sourceforge.net/projects/vcxsrv/)

## Usage

- Create docker image:
```
docker build -t mitsubishi_robot_arm .
```

- Run docker image:
```
docker run --rm -it  --name container_name -e DISPLAY=host.docker.internal:0.0 -e LIBGL_ALWAYS_INDIRECT=0 mitsubishi_robot_arm:latest
```

- Enter a running conainer in a new terminal:
```
docker exec -it container_name bash
```
(Remember to source ROS environment)

## common issues
- ROS commands do not work in second terminal opened in a container: remember to source ROS environment first: `. /opt/ros/kinetic/setup.bash`

- GUI apps are not displayed: set display number to 0 in XLaunch
