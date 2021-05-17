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
54+


