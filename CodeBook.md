Getting and Cleaing Data Course Project CodeBook
========================



Purpose
-------

This is the CodeBook file for the "Getting and Cleaning Data" course project.

This CodeBook a description of the data conatined in tidydata.txt


Raw Data
---------

The raw data for this course project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

Source information, data set information, attribute information, and citation information for the original data is available on the [UCI website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
 

Transformations
---------------

As part of the original data set, the sensor signals were pre-processed (see more pre-processing details on the [UCI website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)).  

As part of the original data set, measured variables were also normalized and bounded within [-1,1].  Therefore, each variable is unitless.

The measured variables in the `tidydata.txt` file are the average of the data for each measured variable for each activity (walking, walking upstairs, walking downstairs, sitting, standing, laying) and each subject (30 volunteers numbered 1 - 30).


Description of tidydata.txt Variables
---------

`tidydata.txt` contains 68 variables.  The first two variables are descriptive.  The remaining 66 variables are measured variables.

For the measured variables, the naming convention follows [Hadley Wickham's Style Guide](http://adv-r.had.co.nz/Style.html); which states that Variable and function names should be lowercase and use an underscore (_) to separate words within a name.

The underscore in the measured variable names separates key features of the variables.  The table describing the key features, naming options, and description is shown below.

Key Feature | Options | Description
---|---|---
Measurement Domain | `t_` or `f_` | Time or Frequency domain of data
Motion Components | `body_` or `gravity_`| Body or Gravity motion component of data
Sensor Signals | `acc_` or `gyro_` | Acceleration or Gyroscopic snesor signals of data
Derived Movement | `jerk_` or `mag_` or `jerk_mag_` | Jerk, Magnitude, or Jerk Magnitude were movements derived from body linear acceleration and angular velocity in time 
Variable Estimates | `mean_` or `std_` | Mean or Standard Deviation estimated from the raw signal data
Feature Vector | `x` or `y` or `z` | Denotes 3-axial signals in the X, Y, and Z direction, if applicable.



The `tidydata.txt` file contains the 68 following variables (in this column order) where the first two are described below and the remaining can be understood using the table of key features above:

1. activity
  * laying, sitting, standing, walking,  walking downstairs, walking upstairs
2. subject
  * 1 - 30
3. t_body_acc_mean_x
4. t_body_acc_mean_y
5. t_body_acc_mean_z
6. t_gravity_acc_mean_x
7. t_gravity_acc_mean_y
8. t_gravity_acc_mean_z
9. t_body_acc_jerk_mean_x
10. t_body_acc_jerk_mean_y
11. t_body_acc_jerk_mean_z
12. t_body_gyro_mean_x
13. t_body_gyro_mean_y
14. t_body_gyro_mean_z
15. t_body_gyro_jerk_mean_x
16. t_body_gyro_jerk_mean_y
17. t_body_gyro_jerk_mean_z
18. t_body_acc_mag_mean_
19. t_gravity_acc_mag_mean_
20. t_body_acc_jerk_mag_mean_
21. t_body_gyro_mag_mean_
22. t_body_gyro_jerk_mag_mean_
23. f_body_acc_mean_x
24. f_body_acc_mean_y
25. f_body_acc_mean_z
26. f_body_acc_jerk_mean_x
27. f_body_acc_jerk_mean_y
28. f_body_acc_jerk_mean_z
29. f_body_gyro_mean_x
30. f_body_gyro_mean_y
31. f_body_gyro_mean_z
32. f_body_acc_mag_mean_
33. f_body_body_acc_jerk_mag_mean_
34. f_body_body_gyro_mag_mean_
35. f_body_body_gyro_jerk_mag_mean_
36. t_body_acc_std_x
37. t_body_acc_std_y
38. t_body_acc_std_z
39. t_gravity_acc_std_x
40. t_gravity_acc_std_y
41. t_gravity_acc_std_z
42. t_body_acc_jerk_std_x          
43. t_body_acc_jerk_std_y
44. t_body_acc_jerk_std_z
45. t_body_gyro_std_x
46. t_body_gyro_std_y
47. t_body_gyro_std_z
48. t_body_gyro_jerk_std_x         
49. t_body_gyro_jerk_std_y
50. t_body_gyro_jerk_std_z
51. t_body_acc_mag_std_
52. t_gravity_acc_mag_std_
53. t_body_acc_jerk_mag_std_
54. t_body_gyro_mag_std_
55. t_body_gyro_jerk_mag_std_
56. f_body_acc_std_x
57. f_body_acc_std_y
58. f_body_acc_std_z
59. f_body_acc_jerk_std_x
60. f_body_acc_jerk_std_y
61. f_body_acc_jerk_std_z
62. f_body_gyro_std_x
63. f_body_gyro_std_y
64. f_body_gyro_std_z              
65. f_body_acc_mag_std_
66. f_body_body_acc_jerk_mag_std_
67. f_body_body_gyro_mag_std_
68. f_body_body_gyro_jerk_mag_std_ 





