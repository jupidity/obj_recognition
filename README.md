
### SVM Model Generation PACKAGE
---

This is a Gazebo and ROS package for generating a `model.sav` of color and normals for various objects contained in the ``/models`` directory fir use in object recognition. The package was modified from the work of Brandon Kinnman and Harsh Pandya from Electric Movement and Udacity RoboND.

## Depends
---
 - Gazebo 1.7
 - ROS Kinetic
 - sklearn
 - numpy
 - pcl 1.8

## Use
---
This assumes you have a ``~/catkin_ws/src`` directory structure.

clone the repo

```sh
cd ~/catkin_ws/src/
git clone https://github.com/jupidity/svm_model_generation.git
```

make in your workspace

```sh
cd ~/catkin_ws
catkin_make
```

if you wish to generate features from a particular model, it must be added to the `/models` directory

otherwise, launch the training simulation
```sh
roslaunch svm_model_generation training.launch
```
a stick with an RGBD camera should appear in Gazebo sim. Next lauch the capture features node.

```sh
rosrun svm_model_generation capture_features.py
```
The model will be generated from 40 captures of the object in a rondom orientation with 256 histogram bins of HSV color space and geometric normals. 
