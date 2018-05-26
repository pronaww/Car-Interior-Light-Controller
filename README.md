Lab exercise 1 : Car Interior Light Controller



Objective of this exercise is to familiarize with the design flow associated with BASYS 3 FPGA board through the design and implementation of a simple car interior light controller.

![image](https://user-images.githubusercontent.com/25972864/40573076-241f89fa-60d9-11e8-9379-a676826a01f6.png)


The light inside the car is controlled through various modes. Usually, there is a 3-­‐way switch with the three positions labelled as SW_OFF, SW_DOOR and SW_ON, as shown in the picture. When this switch is in SW_DOOR position, the light is off only when all doors are closed. Opening any door(s) turns the light on. When the switch is in SW_ON or SW_OFF position, the light is on or off, respectively, independent of the status of the doors.

To implement the light controller circuit on BASYS 3 board, use 4 slide switches to act as the car door switches and three slide switches to represent the 3-­‐way switch. One and only one of these three should be on at any given time (other combinations of the switch positions are to be considered as invalid). One LED represents the car interior light and another LED indicates if the switches representing the 3-­‐way switch are in an invalid position (interior light is to be turned off in this situation).

![image](https://user-images.githubusercontent.com/25972864/40573109-90dbcb1c-60d9-11e8-9871-f90455e3fc34.png)

Please follow the naming as indicated below:

![image](https://user-images.githubusercontent.com/25972864/40573124-c3112adc-60d9-11e8-9e30-fc901f3a15e1.png)

Design File Name: lab1_car_light
