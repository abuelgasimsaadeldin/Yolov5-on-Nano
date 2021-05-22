# Combine Jetbot Road Following and Collision Avoidance tasks

Jetbot is an open source AI Robot based on the Nvidia Jetson Nano ([Jetbot Repository](https://github.com/NVIDIA-AI-IOT/jetbot))

It is used for educational purpose and can perform multiple tasks including Road Following, Collision Avoidance and Object Following.

## Collision Avoidance

Collision Avoidance in Jetbot is a binary classification task which consists of 2 classes ```blocked``` and ```free``` which is used to keep the Jetbot safe and avoid collisions with obstacles.  

## Road Following

Road Following in Jetbot is a regression task which teaches the Jetbot to detect a continuous target x and y which will enable the Jetbot to follow a specific path on a track.

## Road Following + Collision Avoidance

This project focuses on combining both optimized **regression** and **classification** models into one notebook to enable the Jetbot to follow a specific path on the track and at the same time also be able to avoid collisions with obstacles that come on it's way in real-time by bringing the Jetbot into a complete halt.

## How to Run

1) Collect image regression dataset, train and optimize your Road Following model using the notebooks provided in the original [Jetbot Repository](https://github.com/NVIDIA-AI-IOT/jetbot/tree/master/notebooks/road_following).

```
data_collection.pynb: Collect image regression dataset which consists of image coordinate target points x and y.
train_model.ipynb: Perform model training using ResNet18 model architecture to predict two continuous values x and y corresponding to a target point.
live_demo_build_trt.ipynb: Optimize the trained model by using TensorRT for faster inference on the Jetson Nano.
```

2) Collect image classification dataset, train and optimize your Collision Avoidance model using the notebooks provided in the original [Jetbot Repository](https://github.com/NVIDIA-AI-IOT/jetbot/tree/master/notebooks/collision_avoidance).

```
data_collection.pynb: Collect image classification dataset which consists of two classes, Blocked and Free.
train_model_resnet18.ipynb: Perform model training using ResNet18 model architecture to detect the two classes and help Jetbot to avoid collisions.
live_demo_build_trt.ipynb: Optimize the trained model using TensorRT for faster inference on the Jetson Nano.
```

**Note**: For Collision Avoidance, the ```Blocked``` class should include images of obstacles such as **cars**, **people**, **stop signs** etc. captured on the track, meanwhile the ```Free``` class should include background images of the empty track where Jetbot should be free to move around.

3) Save the TRT models inside the "combine_scripts" folder and run the "RoadFollowing+CollisionAvoidance.ipynb" notebook.

**Note**: The object detection threshold can be adjusted using the "blocked threshold" slider and the time for stop (after an object has been removed) can be adjusted using the "time for stop" slider.

## Live Demo



Training Dataset: Example of images used for training both models can be found in this [link](https://drive.google.com/drive/folders/1Dry1vjTSaar014Pxlp1s3_ckTt5B6zeE)






## Vehicle Classification and Counting

This system is able to detect and classify vehicles in 4 classes namely *car*, *motorcycle*, *bus* and *truck* and count the total number of vehicles detected in each of those classes.



### Requirements

Python 3.8 or later with all [requirements.txt](requirements.txt) dependencies installed, including torch>=1.7 . To install run:

$ pip install -r requirements.txt

### Inference

*detect.py*: Detects vehicles from 4 classes (car, motorcycle, bus and truck) and displays the detections on the image window. (suitable for images and videos)   

```bash
$ python detect.py --source data/vehicle_test_images/* 
```

*count.py*: Detects and counts the number of vehicles detected in each frame and displays it on the image window. (suitable for images)   

```bash
$ python count.py --source data/vehicle_test_images/* 
```

*track.py*: Detects and tracks each vehicle present in the video frame providing it with a unique id number for tracking, then count the number of vehicles that pass through a virtual line. (suitable for videos)
 
 ```bash
$ python track.py --source data/vehicle_test_videos/live.mp4
```

## Results

### detect.py

![13](https://user-images.githubusercontent.com/68045710/116211457-66f14700-a776-11eb-9026-0cb5ed5ad602.jpeg)


### count.py

![13](https://user-images.githubusercontent.com/68045710/116211399-5771fe00-a776-11eb-93f5-5773a3d088c9.jpeg)

### track.py

https://user-images.githubusercontent.com/68045710/116215984-bcc7ee00-a77a-11eb-8354-0fafdc0a986d.mp4



