---
title: Tejas:Building a Model Rocket from Scratch
author: Nikhil Mishra
pubDatetime: 2022-06-06T04:06:31Z
slug: tejas-model-rocket
featured: true
draft: false
tags:
  - project
ogImage: ../../../assets/images/projects/results-thumbnail.png
description: Tejas is a ground-up model rocket. It encompasses the creation a custom thrust bench, fault-tolerant flight computer, and safety-tested rocket motors.
---

## Introduction

This took over a year for the development and testing phases. It's finally in the launch phase. Building a model rocket from scratch requires, building up the infrastructure first. This consists of Thrust Bench, Launchpad services and Rocket Motor Dev. The on board flight computer is built with fault tolerant design philosophy. It performs data logging of 10 channel stream at 30 times per second. The software design utilized a state based system where the computer is aware of the flight stages. More features: Killswitch, Apogee Detection, Safety Net.

<iframe src="https://www.youtube.com/embed/j3z7UXpAsL0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="width: 100%; aspect-ratio: 16/9;"></iframe>

## TEJAS - Flight Computer

![image](@/assets/images/projects/tejas-obc.png)

The on board flight computer is built with fault tolerant design philosophy. It performs data logging of 10 channel stream at 30 times per second. The software design utilized a state based system where the computer is aware of the flight stages. More features: Killswitch, Apogee Detection, Safety Net.

## TEJAS - Thrust Bench

![image](@/assets/images/projects/TEJAS%20-%20thrustbench.png)

Rocket motors are the next critical element which requried a lot of testing. The thrust bench uses a loadcell to measure the rocket motor's thrust. Later impulse, specific impulse and avgerage force are calculated. The software is designed keeping safety in mind.

## Rocket Motors

![image](@/assets/images/projects/TEJAS%20-%20rocketmotors.png)

Developing rocket motors is truely the most difficult part of this endevour. This required a thrust bench to get thrust data to iterate rocket motor designs. After over 12 rocket motor builds, the motor design is now safe to use and performs as per design.

## Reports & Data

![image](@/assets/images/projects/T2L-graph.gif)

Data is the most important aspect in rocketry. Data can provide a picture perfect view of what happened during the flight. The on-board flight computer records data at 30 times/sec for 10 channels. This is plenty of data for post trajectory analysis, rocket strain and identifying anamolies.
