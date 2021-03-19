# Vehicle Classification and Counting

This system is able to detect and classify vehicles in 4 classes namely *car*, *motorcycle*, *bus* and *truck* and count the total number of vehicles detected in each of those classes.

## Requirements

Python 3.8 or later with all [requirements.txt](requirements.txt) dependencies installed, including torch>=1.7 . To install run:

$ pip install -r requirements.txt

## Inference

$ python count.py --source http://175.138.60.123:8090/ANPR08.webm --weights yolov5s.pt

## Results 

![1](https://user-images.githubusercontent.com/68045710/111742863-bf097380-88c3-11eb-9003-910896bf82ce.jpg)
