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
Measurement Domain | `time_` or `frequency_` | Time or Frequency domain of data
Motion Components | `body_` or `gravity_`| Body or Gravity motion component of data
Sensor Signals | `acceleration_` or `gyroscopic_` | Acceleration or Gyroscopic snesor signals of data
Derived Movement | `jerk_` or `magnitude_` or `jerk_magnitude_` | Jerk, Magnitude, or Jerk Magnitude were movements derived from body linear acceleration and angular velocity in time 
Variable Estimates | `mean_` or `standarddeviation_` | Mean or Standard Deviation estimated from the raw signal data
Feature Vector | `x` or `y` or `z` | Denotes 3-axial signals in the X, Y, and Z direction, if applicable.



The `tidydata.txt` file contains the 68 following variables (in this column order) where the first two are described below and the remaining can be understood using the table of key features above:

1. activity
  * laying, sitting, standing, walking,  walking downstairs, walking upstairs
2. subject
  * 1 - 30
3. time_body_acceleration_mean_x
4. time_body_acceleration_mean_y
5. time_body_acceleration_mean_z
6. time_gravity_acceleration_mean_x
7. time_gravity_acceleration_mean_y
8. time_gravity_acceleration_mean_z
9. time_body_acceleration_jerk_mean_x
10. time_body_acceleration_jerk_mean_y
11. time_body_acceleration_jerk_mean_z
12. time_body_gyroscopic_mean_x
13. time_body_gyroscopic_mean_y
14. time_body_gyroscopic_mean_z
15. time_body_gyroscopic_jerk_mean_x
16. time_body_gyroscopic_jerk_mean_y
17. time_body_gyroscopic_jerk_mean_z
18. time_body_acceleration_magnitude_mean_
19. time_gravity_acceleration_magnitude_mean_
20. time_body_acceleration_jerk_magnitude_mean_
21. time_body_gyroscopic_magnitude_mean_
22. time_body_gyroscopic_jerk_magnitude_mean_
23. frequencey_body_acceleration_mean_x
24. frequencey_body_acceleration_mean_y
25. frequencey_body_acceleration_mean_z
26. frequencey_body_acceleration_jerk_mean_x
27. frequencey_body_acceleration_jerk_mean_y
28. frequencey_body_acceleration_jerk_mean_z
29. frequencey_body_gyroscopic_mean_x
30. frequencey_body_gyroscopic_mean_y
31. frequencey_body_gyroscopic_mean_z
32. frequencey_body_acceleration_magnitude_mean_
33. frequencey_body_body_acceleration_jerk_magnitude_mean_
34. frequencey_body_body_gyroscopic_magnitude_mean_
35. frequencey_body_body_gyroscopic_jerk_magnitude_mean_
36. time_body_acceleration_standarddeviation_x
37. time_body_acceleration_standarddeviation_y
38. time_body_acceleration_standarddeviation_z
39. time_gravity_acceleration_standarddeviation_x
40. time_gravity_acceleration_standarddeviation_y
41. time_gravity_acceleration_standarddeviation_z
42. time_body_acceleration_jerk_standarddeviation_x          
43. time_body_acceleration_jerk_standarddeviation_y
44. time_body_acceleration_jerk_standarddeviation_z
45. time_body_gyroscopic_standarddeviation_x
46. time_body_gyroscopic_standarddeviation_y
47. time_body_gyroscopic_standarddeviation_z
48. time_body_gyroscopic_jerk_standarddeviation_x         
49. time_body_gyroscopic_jerk_standarddeviation_y
50. time_body_gyroscopic_jerk_standarddeviation_z
51. time_body_acceleration_magnitude_standarddeviation_
52. time_gravity_acceleration_magnitude_standarddeviation_
53. time_body_acceleration_jerk_magnitude_standarddeviation_
54. time_body_gyroscopic_magnitude_standarddeviation_
55. time_body_gyroscopic_jerk_magnitude_standarddeviation_
56. frequencey_body_acceleration_standarddeviation_x
57. frequencey_body_acceleration_standarddeviation_y
58. frequencey_body_acceleration_standarddeviation_z
59. frequencey_body_acceleration_jerk_standarddeviation_x
60. frequencey_body_acceleration_jerk_standarddeviation_y
61. frequencey_body_acceleration_jerk_standarddeviation_z
62. frequencey_body_gyroscopic_standarddeviation_x
63. frequencey_body_gyroscopic_standarddeviation_y
64. frequencey_body_gyroscopic_standarddeviation_z              
65. frequencey_body_acceleration_magnitude_standarddeviation_
66. frequencey_body_body_acceleration_jerk_magnitude_standarddeviation_
67. frequencey_body_body_gyroscopic_magnitude_standarddeviation_
68. frequencey_body_body_gyroscopic_jerk_magnitude_standarddeviation_ 





