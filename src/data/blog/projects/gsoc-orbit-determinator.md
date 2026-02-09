---
title: GSOC:Tracking continuous and sporadic signals of Satellites
author: Sat Naing
pubDatetime: 2020-07-29T04:06:31Z
slug: gsoc-orbit-determinator
featured: true
draft: false
tags:
  - project
ogImage: ../../../assets/images/projects/gsoc/gsoc-thumnail.png
description: With increasing popularity in CubeSat technologies, it has gotten ever so important to have low-cost systems that complement the economical and self-reliant nature of today’s cubesats providers. One of the most important parts of an end to end small satellite business is ground-based tracking.
---

## Introduction

![](@/assets/images/projects/gsoc/gsoc-thumnail.png)

With increasing popularity in CubeSat technologies, it has gotten ever so important to have low-cost systems that complement the economical and self-reliant nature of today’s cubesats providers. One of the most important parts of an end to end small satellite business is ground-based tracking. Satellite tracking provides valuable information on the whereabouts. Satellite tracking industry is booming with the use of large antennas and high power transmitters at cost-prohibitive nature but at the cost of expense and lead time.

It is thus important to use an alternative tracking method, for example, Doppler Tracking. Doppler based orbit determination uses a doppler frequency shift to convert to a distance problem. To do doppler tracking, one has to first track the frequency of the signal. This way the cost of the tracking system is kept low because equipment needs beyond the essential receiver are small, at a minimum consisting of an amplifier and a variable oscillator. This project aims to provide a universal tracking solution for burst and continuous type signals of satellites.

## Overview

![](https://aerospaceresearch.net/wp-content/uploads/2020/08/workflow.png)

This project aims to have a universal tracker for sporadic and continuous type signals. This requires the above workflow. Overall there are three main stages of processing before we arrive at our final track. Every stage has its own function and uses a particular algorithm.

- Stage 1: Pre-Processing
- Stage 2: Decision Making
- Stage 3: Tracking

## Waterfall

![](https://aerospaceresearch.net/wp-content/uploads/2020/08/waterfall_multi_plot-2.png)

Before the pre-processing stage, it’s important that we have our signal in the frequency domain, by taking the Fourier Transform. So, the program performs the FFT in chunks to improve memory performance and runtime. It then selects the desired channels of a specific bandwidth, as per the user’s requirement.

## Signal Detection

### FFT Averaging

Before we make a decision, whether a certain FFT frame has the signal or not, we need to remove some consistent artefacts present throughout the duration of the recording.

The basic idea of averaging for spectral noise reduction is the same as arithmetic averaging to find a mean value. This operation is a type of low-pass filtering that can reduce high-frequency noise.

![](https://aerospaceresearch.net/wp-content/uploads/2020/08/iss-aprs-9.png)

Calculating an average spectrum involves averaging across common frequencies in multiple spectra. So we subtract an average spectral frame from the sample frame in question. This improves measurement accuracy and also helps to compensate for a low signal-to-noise ratio.

### Decision

The decision of whether a signal exists in a given FFT frame is done by checking the neighbouring frequency bins of a sample bin (n) that all have bin magnitudes greater than that of a dynamic threshold.
![](https://aerospaceresearch.net/wp-content/uploads/2020/08/decision-making.jpg)

This threshold is calculated as follows:
$Threshold = Mean + SD + safety gap$

<figure>
  <img src="https://aerospaceresearch.net/wp-content/uploads/2020/08/noaa-2019521-spectra-plt-1.jpg" alt="Spectra Plot" />
  <figcaption>Figure: Black indicates selected bins</figcaption>
</figure>

<figure>
  <img src="https://aerospaceresearch.net/wp-content/uploads/2020/08/noaa-2019521-spectra-plt-3.png" alt="Spectra Plot" />
  <figcaption>Figure: A NOAA signal’s full spectra; green(channel selected)
</figcaption>
</figure>

## Tracking

### Finding the center

Once the signal is found in a particular FFT frame, it is a matter of finding the centre of the geometric signal. To cover most signal types a generic approach has to be taken. This is why a spectral centroid is a good enough representation of the signal center. A spectral centroid analogous to geometric center and refers to the balance point of the signal.

$\text{Centroid} = \frac{\sum_{n=0}^{N-1} f(n)x(n)}{\sum_{n=0}^{N-1} x(n)}$

_where $x(n)$ represents the weighted frequency value, or magnitude, of bin number $n$, and $f(n)$ represents the center frequency of that bin._

## Track Smoothing

<figure>
  <img src="https://i.imgur.com/7YUSvKv.jpg" alt="Spectra Plot" />
  <figcaption>Figure: NOAA Waterfall Signal Track (white-raw track, black-filtered track)
</figcaption>
</figure>

<figure>
  <img src="https://i.imgur.com/EVdrp5m.png" alt="Spectra Plot" />
  <figcaption>Figure: APRS Waterfall Signal Track – (white- raw track, black – fitted track)
</figcaption>
</figure>

<figure>
  <img src="https://i.imgur.com/n1DcUQQ.png" alt="Spectra Plot" />
  <figcaption>Figure: APRS Waterfall Signal Track (BW-10kHz) – (white- raw track, black – fitted track)
</figcaption>
</figure>

## Outputs

The program can output spectral frame and waterfall plots of multi-channels and bandwidths specified by the user. The frequency track of the signal from the specified channels, when found, is finally stored in a JSON file.

| Signal Channel | Frequency   | BW     | Waterfall                                     | Data |
| :------------- | :---------- | :----- | :-------------------------------------------- | :--- |
| NOAA           | 137.62 MHz  | 32 kHz | ![waterfall](https://imgur.com/7YUSvKv.png)   | json |
| APRS-1         | 145.825 MHz | 10 kHz | ![waterfall](https://i.imgur.com/CTGxOq3.png) | json |
| APRS-2         | 145.825 MHz | 10 kHz | ![waterfall](https://i.imgur.com/n1DcUQQ.png) | json |

## Acknowledgement

In the end, I would like to thank [AerospaceResearch](https://aerospaceresearch.net) for giving me the incredible opportunity to work with them in [Google Summer of Code 2020](https://summerofcode.withgoogle.com/archive/2020/organizations/5720999993016320). I have learned a great deal and this journey has solidified my belief in open source for space. I would also like to thank Andreas Hornig for being the mentor of this project and extending his guidance and support, whenever needed.

## Links

- [Github Repo](https://github.com/hornig/dopplershifting)
- [Google Docs](https://docs.google.com/document/d/1F9XKZiT5WFehbTom8RvvZalw7KCDICRS1sFiqU8vgps/edit?usp=sharing)
