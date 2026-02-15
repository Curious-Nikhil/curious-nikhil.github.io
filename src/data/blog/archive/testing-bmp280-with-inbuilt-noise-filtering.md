---
author: Nikhil
pubDatetime: 2019-07-09T15:22:00Z
modDatetime: 2019-07-10T16:52:45.934Z
title: Testing BMP280 with InBuilt Noise Filtering
slug: testing-bmp280-with-inbuilt-noise-filtering
featured: false
tags:
  - electronics
description: "Testing BMP280 for rocket altitude detection and comparing results with / without various filtering options. "
heroImage: ../../../assets/images/bmp280-img.webp
---

## **Inbuilt IIR (Infinite Impulse Response)**

![captionless image](https://miro.medium.com/v2/resize:fit:1214/format:webp/0*oqH6vyQ_a471qrYi)

With Different osrs_p settings (fig 1) y-axis (height in m)

![captionless image](https://miro.medium.com/v2/resize:fit:1252/format:webp/0*isMjVucptM_t79VZ)

_With Different IIR settings (fig 2)_

In fig(1), it’s clear that oversampling of 10 or more is helpful. Can you make any other analysis from this?

In Fig(2), IIR (8) is doing some aggressive filtering. But it’s still not perfect. Might need to use a filter.

**Kalman Filter (1 — Var)**

![captionless image](https://miro.medium.com/v2/resize:fit:1036/format:webp/0*T7Sr17fjX2h9oROE)

Kalman Filter is one challenging thing to get it perfect.

Kalman Gain Vals

![captionless image](https://miro.medium.com/v2/resize:fit:1018/format:webp/0*QeyDcCsBJX2gkEL4)

### Testing the BMP280

Set up a vacuum chamber to test it. In fact, initial testing you could probably do with the BMP280 just placed in the hose or coupling of a vacuum cleaner. That is the method I started with to test altimeters. From there I just moved to a small cardboard box and a vacuum cleaner.

### Accuracy

As for accuracy, both pressure and temperature the BMP280 is really good. The pressure accuracy, when temperature correct, falls to below the resolution. It reads down to 1nPa, so the reading accuracy is going to be +/- .16hPa, roughly +/- 1 meter at sea level. Temp is +/- .5°C. This is an amazingly accurate sensor, especially for the price.

The overall accuracy of the altimeter depends on several factors and is not that easy to measure. Unless you have access to pressure standards, it is better to measure correlation with another altimeter. Any of the commercial recording altimeters will work if you have one. I tend to check two or three at a time and generally get somewhere between 2% an 5% correlation. That is the high and low will be within 2 to 5 percent of each other for apogee reading. Obviously, a quick function check and not a serious calibration with NIST traceability.
