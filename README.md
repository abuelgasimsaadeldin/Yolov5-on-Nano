# Car and Carplate Detection using Yolov5 on Jetson Nano

The Following scripts work on a Jetson Nano with **JetPack 4.5** image flashed which can be downloading from this [link](https://developer.nvidia.com/jetpack-sdk-45-archive)

### Change Docker Default Runtime
This sets ```"default-runtime": "nvidia"``` in ```/etc/docker/daemon.json```
```
./setup.sh
```
### Build the Docker Image 
Note: This will take approximately 3hours to complete
```
./build.sh
```

### Check Camera is Detected
Check to insure that the webcam is connected to /dev/video0
```
ls -ltrh /dev/video*
```

### Inference
Car and Carplate detection using a webcam that is connected to the Jetson Nano
```
./run.sh
```

### Reference

https://github.com/otamajakusi/dockerfile-yolov5-jetson
