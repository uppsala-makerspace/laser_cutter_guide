---
tags:
  - step
  - laser
  - start
---

# Start laser

Step|Do                                             |Check
----|-----------------------------------------------|-----------------------------------------
1   |Say 'Air in on'                                |The green light is on
2   |Say 'I am wearing my goggles'                  |You have your goggles on
3   |Say 'You are wearing your goggles'             |You assistant has his/her goggles on
4   |Say 'Those behind us are wearing their goggles'|All those behind you (if any) have goggles on
5   |Say '3, 2, 1'                                  |Nobody says 'stop'
6   |Press start                                    |Nobody says 'stop'
7   |Say 'Laser in on'                              |Laser is on, hand is on laser casing
8   |Say 'All is well'                              |No fire
9   |Say 'Laser is off'                             |Laser is on

```mermaid
flowchart TD
   start[Start]
   check_air[1.Air is on]
   check_my_glasses[2.My glasses are on]
   check_your_glasses[3.Your glasses are on]
   check_behind_glasses[4.Behind us have glasses on]
   countdown[5.Three, two, one]
   press_start[6.Press start]
   laser_is_on[7.Laser is on]
   all_is_well[8.All is wll]
   laser_is_off[9.Laser is off]

   start --> check_air
   check_air --> check_my_glasses
   check_my_glasses --> check_your_glasses
   check_your_glasses --> check_behind_glasses
   check_behind_glasses --> countdown
   countdown --> press_start
   press_start --> laser_is_on
   laser_is_on --> all_is_well
   all_is_well --> laser_is_off
```

