<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->


## Draw_Triangle

Draw a triangle by setting 2 sides and an angle. Set an offset (-1<x<1,-1<y<1) from which a and b are drawn.


## Features

* Draw a triangle by setting 2 sides and an angle
* Set an offset to Control triangle's position 
* Rotate triangle
* Set triangle's color
* Set triangle's side width
* Set triangle's side color
* Get triangle's height
* Get triangle's third side
* Get triangle's area




## Getting started

To use this package, add draw_triangle as a dependency in your pubspec.yaml file.


## Usage

```
Draw_Triangle(
        angle_ab: 90,
        a: 180,
        b: 180,
        color: Colors.blue,
        sideWidth: 5,
        sideColor: Colors.black,
        rotate:45
	offset:Offset(0,0)
);
```




## Parameters

Here are the accepted parameters :

| Name  | Type | Default Value | Description | 
| ------------- | ------------- | ------------- | ------------- | 
| angle_ab  | double | null | Angle between side a and side b | 
| a  | double | null | Length of side a |
| b  | double | null | Length of side b | 
| offset  | Offset | (0,0) | offset (-1<x<1,-1<y<1) from which a and b are drawn| 
| rotate  | double | 0 | Triangle's rotation in degrees, from 0 to 360 | 
| color  | Color | null | Triangle's inner color | 
| sideColor  | Color | Colors.transparent | Triangle's side color | 
| sideWidth  | double | 0 | Triangle's side width | 




