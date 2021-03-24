### Vehicle Classification and Counting

This system is able to detect and classify vehicles in 4 classes namely *car*, *motorcycle*, *bus* and *truck* and count the total number of vehicles detected in each of those classes.



### Requirements

Python 3.8 or later with all [requirements.txt](requirements.txt) dependencies installed, including torch>=1.7 . To install run:

$ pip install -r requirements.txt

### Inference

*count.py*: Detects and counts the number of vehicles detected in each frame and displays it on the image window. (suitable for images)   
*track.py*: Detects and tracks each vehicle present in the video frame providing it with a unique id number. (suitable for videos)

$ python count.py --source data/vehicle_test_images/*    
$ python track.py --source data/vehicle_test_videos/live.mp4

### Results from count.py

![1](https://user-images.githubusercontent.com/68045710/111742863-bf097380-88c3-11eb-9003-910896bf82ce.jpg)
