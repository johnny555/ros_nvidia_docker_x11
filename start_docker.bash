xhost +si:localuser:root
docker run -it --net=host --gpus all \
    --env="DISPLAY" \
    --env="NVIDIA_DRIVER_CAPABILITIES=all" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="${PWD}/workshop_ws":"/workshop_ws":rw \
    nvidia_ros \
    bash
