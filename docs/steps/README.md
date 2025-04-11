---
tags:
  - intro
  - introduction
  - overview
---

# Overview

The procedure on using the laser cutter is complex.
Here is an overview:

```mermaid
flowchart TD
  get_material[Get material]
  start_ventilation[Start ventilation]
  power_on_laser_cutter[Power on the laser cutter]
  start_computer[Start computer]
  start_lightburn[Start LightBurn]
  position_material[Position the material]
  setup_laser_physically[Setup laser physically]
  setup_laser_in_lightburn[Setup laser in LightBurn]
  load_image[Load or create an image]
  setup_lightburn[Setup LightBurn]
  close_enclosure[Close enclosure]
  start_laser[Start laser]
  turn_off_everything[Turn off everything]

  start_computer --> start_lightburn
  get_material --> position_material
  position_material --> setup_laser_physically
  power_on_laser_cutter --> setup_laser_in_lightburn
  get_material --> setup_laser_in_lightburn
  start_lightburn --> load_image
  setup_laser_in_lightburn --> setup_lightburn
  load_image --> setup_lightburn
  setup_laser_physically --> close_enclosure
  setup_lightburn --> close_enclosure
  start_ventilation --> start_laser
  close_enclosure --> start_laser
  start_laser --> turn_off_everything

```

These are the steps:

- [Start ventilation](start_ventilation.md)
- [Power on the laser cutter](power_on_laser_cutter.md)
- [Start computer](start_computer.md)
- [Start LightBurn](start_lightburn.md)
- [Setup laser in LightBurn](setup_laser_in_lightburn.md)
- [Get material](get_material.md)
- [Position the material](position_material.md)
- [Setup laser physically](setup_laser_physically.md)
- [Load or create an image](load_image.md)
- [Setup LightBurn](setup_lightburn.md)
- [Close enclosure](close_enclosure.md)
- [Start laser](start_laser.md)
- [Turn off everything](turn_off_everything.md)

