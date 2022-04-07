#! /bin/bash

#EXIBE MENU DE ESCOLHA
OPC=$(dialog --menu "Install and Start ROS + Pepper: " 0 0 0 \
1 "Install ROS Melodic" \
2 "Pepper" \
3 "Expression Facial" \
4 "Wheelchair" --stdout)

case $OPC in
	1)	
	gnome-terminal --tab -- ./ROS_Melodic.sh
	./inst.ros.Wheelchair.sh;;

	2)
	OPC1=$(dialog --menu "Pepper options: " 0 0 0 \
	1 "Pepper Instalation" \
	2 "Start World" \
	3 "Start RQT" \
	4 "Start Trajectory" --stdout)
	case $OPC1 in
		1)
		gnome-terminal --tab -- Pepper_Instalation.sh
		./inst.ros.Wheelchair.sh;;

		2)
		gnome-terminal --tab -- Start_World.sh
		./inst.ros.Wheelchair.sh;;

		3)
		gnome-terminal --tab -- Start_RQT.sh
		./inst.ros.Wheelchair.sh;;

		4)
		gnome-terminal --tab -- Start_Trajectory.sh
		./inst.ros.Wheelchair.sh;;
	esac
	./inst.ros.Wheelchair.sh;;

	3)
	OPC2=$(dialog --menu "Facial options: " 0 0 0 \
	1 "Expression Facial Instalation" \
	2 "Start Expression Facial" --stdout)
	case $OPC2 in
		1)
		gnome-terminal --tab -- Expression_Facial_Instalation.sh
		./inst.ros.Wheelchair.sh;;

		2)
		gnome-terminal --tab -- Start_Expression_Facial.sh
		./inst.ros.Wheelchair.sh;;
	esac
	./inst.ros.Wheelchair.sh;;

	4)
	gnome-terminal --tab -- ./4.sh
	./inst.ros.Wheelchair.sh;;


	*)
	clear

esac
