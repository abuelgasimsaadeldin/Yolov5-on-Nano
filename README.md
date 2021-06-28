# Tools for data preparations

Prepare environment (linux)
```
# Run script
bash start.sh

# activate virtual environment
source dataPrep/bin/activate
```
Prepare environment (windows)


## Video to images extraction 
```  
python3 video2frame.py -v PATHOFVIDEO -i 5 -c STARTINGIMAGENUMBER -f FRAMERATE
``` 

Must have Flags:
- video     = video path

Optional Flags:
- frames    = frame rate of video. Default value is set to 30.
- interval  = Time (in seconds) to capture frame. Default value is set to 1 second
- counter   = image number after unique id, default is set to 1.

eg:
User want to extract image every 5 second from a 30 fps video on path ../data/dashcam.MP4
```  
python3 video2frame.py -v ../data/dashcam.MP4 -i 5 -f 30 
``` 
Video to images extraction using Yolov4-tiny pretrained model 

You can use colab notebook [here](https://colab.research.google.com/drive/1auYpS0jC4KJuV7rdnrpkJApJm0vDk7mb?usp=sharing).
Please make a copy before you run the codes on colab.


## Convert PNG to JPG or JPEG
```
python3 convert_png2jpg.py --image test.png 
```

## Rename images with random ID
```
python3 rename.py --dir images
```
dir = path of directory for captured photos

## Data Augmentation
```
 python3 imgAug.py --dir trial --dest result -R -B --bright 2.0 -F
```
dir = path of data directory to perform augmentation

dest = path of directory to store result

bright = value of brightness

noise = value of noise 

degree = degree of rotation

N = use noise augmentation

R = use rotation augmentation

B = use brighness or darkness augmentation

F = use flip augmentation

Please refer to the code for further explaination 

## Remove '_jpg', '_JPG', '_jpeg' from filenames
```
python3 remove_jpg.py --dir PATH_TO_DIRECTORY
```
dir = path to folder

## Train, Test, Split scripts for object detections
Note: *Supports Yolo txt and Pascal VOC type file formats*
```
python train_test_valid.py --dir experiments --train_out train --test_out test --valid_out valid
```
dir         = directory of database

train_out   = path of train dataset output

test_out    = path of ts




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

**Note**: For Collision Avoidance, the ```Blocked``` class should include images of obstacles such as **vehicles**, **people**, **stop signs** etc. captured on the track, meanwhile the ```Free``` class should include background images of the empty track where the Jetbot should be free to move around in.

3) Save the TRT models inside the "combine_scripts" folder and run the "RoadFollowing+CollisionAvoidance.ipynb" notebook.

**Note**: The object detection threshold can be adjusted using the "blocked threshold" slider and the time for stop (after an object has been removed) can be adjusted using the "time for stop" slider.

## Live Demo

![jetbot-gif1-small-10mb](https://user-images.githubusercontent.com/68045710/119227944-040b8980-bb43-11eb-9ea0-78e677f407ff.gif)

Example of images used for training both models can be found in this [link](https://drive.google.com/drive/folders/1Dry1vjTSaar014Pxlp1s3_ckTt5B6zeE).






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

~~wat?~~
- [ ] Mercury
- [x] Venus

