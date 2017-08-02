#!/bin/bash

# shell script for training SVM classifier "model.sav"
# pieced together from the work by Brad Kinnman and Harsh Pandya


rosrun obj_recognition capture_features.py

rosrun obj_recognition train_svm.py
