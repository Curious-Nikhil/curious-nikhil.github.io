### Rocket Flight Computer
![image](/img/results-thumbnail.png)

> I prefer to sail in a bad ship with a good captain rather than sail in good ship with a bad captain.

# Introduction
The onboard flight computer is built with fault-tolerant design philosophy. It performs data logging of 10 channel streams at 30 times per second. The software design utilized a state-based system where the computer is aware of the flight stages. More features: Killswitch, Apogee Detection, Safety Net.

# Hardware Design

The Flight Computer has 3 sensors in total working in tandem with a filter on top to give inputs to the control system. A second MPU 6050 sensor or ADXL335 sensor can be used to check if the error is TVC has come to zero or not, Closed Loop TVC Calibration.

## Circuit Diagram

## Parachute Ejection Circuit



# Software Design

## Events
* Standby Mode
* Alarmed
* Launch
* Detects Apogee
* Detects Landing
* Switches to Idle Mode
  
# Testing

# Final Flight

# Observation




