---
tags:
  - procedure
  - step
  - set up
  - setup
---

# Setup LightBurn

Here you set up how the laser cuts the image

In the 'Cuts/Layers' tab, you can set the most important parameters per layer:

Parameter    |Description
-------------|---------------------------------------
Mode         |The mode of cutting, see below
Output       |Run the laser here yes/no
Show         |Show this color on the drawing
Air          |Have air on yes/no. Have this on for cuts
Speed (mm/s) |The speed of the laser
Power Max (%)|The power of the laser
Pass count   |How often the laser cuts each line

Here are the modes:

Mode       |Description
-----------|---------------------
Line       |Cut through
Fill       |Will etch the surface
Offset fill|Hard to describe :-)

The pass count, speed and power differ per material.

Here is a list of know values:

Material                                  |Cut     |Pass count|Speed (mm/sec)|Power (%)
------------------------------------------|--------|----------|--------------|---------
Paper for oil and acryl painting, 290 g/m2|Complete|1         |10            |75
Paper for oil and acryl painting, 290 g/m2|Half    |1         |10            |20
Paper from printer                        |Complete|1         |10            |20 
Paper from printer                        |Half    |1         |30            |25

You will have to find out your values by trail and error.
Please [contribute](../CONTRIBUTE.md)
the values for your favorite material :-)
