#! /bin/bash

cd
clear

DOWN(){
echo $1 | dialog --gauge 'Wait... \n
Installing Expression Facial' 0 0 0
}

GAUGE 0 
cd ~/catkin_ws/src

GAUGE 1
git clone https://github.com/fabioabdon/facial_expression.git

GAUGE 3
cd /home/fabio/catkin_ws/src/expressao_facial
rm my_model.h5

GAUGE 4
wget URL https://github.com/fabioabdon/facial_expression/raw/master/my_model.h5

GAUGE 10
cd ..

GAUGE 11
catkin_make

GAUGE 20
pip install keras==1.2.2

GAUGE 28
pip install tensorflow==0.12.1

GAUGE 38
sudo pip install imutils

GAUGE 48
pip install rospkg

GAUGE 58
python -m pip install --upgrade pip

GAUGE 68
pip install opencv-python

GAUGE 78
sudo pip install imutils

GAUGE 88
pip install h5py==2.10.0

GAUGE 98
pip install protobuf==3.17.3

GAUGE 99
sleep 1

GAUGE 100
sleep 1

dialog                                         \
   --title 'Complete installation.'                           \
   --msgbox '\nExpression Facial was successfully installed.'  \
   0 0

