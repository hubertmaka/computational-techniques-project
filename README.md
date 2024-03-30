# Project: Computational Techniques

## Topic: Implementation of Various Digital Filters with Presentation on an Example Signal

### Authors: Hubert Mąka, Dominik Marszałek

## Introduction

The project involves implementing various digital filters using the Matlab language.

Digital filters are electronic systems or algorithms used for processing digital signals. They can be used for various purposes, such as filtering noise or interference from a signal, transforming a signal from one frequency to another, or smoothing a signal. Unlike analog filters, digital filters use digital computational methods to process the signal, which allows for more precise and accurate operation. They are divided into different types, depending on the implementation method and frequency characteristic.

We decided to include four digital filters selected by us in the project, which are described below:

### - FIR filter

FIR (Finite Impulse Response) filters are a type of digital filter characterized by a finite impulse response. This means that the signal processed by such a filter has a finite duration after passing through it. FIR filters are very often used in various signal processing applications because they are more precise and accurate than other types of digital filters. Additionally, FIR filters do not require additional feedback systems, which makes them simpler to build and use.

### - IIR filter

IIR (Infinite Impulse Response) filters are a type of digital filter characterized by an infinite impulse response. This means that the signal processed by such a filter does not have a finite duration after passing through it. IIR filters are often used in various signal processing applications because they are simpler to build than FIR filters and require fewer calculations. However, due to their infinite impulse response, IIR filters can be less precise and accurate than FIR filters.

### - Low-pass filter

Low-pass filters are filters that process the signal by filtering out all components with frequencies higher than a specified threshold value. They are used to reduce the content of high-frequency noise and interference in the signal, which allows for better sound or image quality.

### - Median filter

The median filter is a type of digital filter that works by finding the median for a certain window of neighboring points of the input signal and assigning it as the value of the output signal point. This allows median filtering to remove outliers and other unwanted signal components. This is especially useful for signals containing large amounts of noise.

### Solvers

Matlab has many solvers for digital signal processing/filtering. Thanks to these tools, you can quickly and easily design and implement various types of digital filters, such as FIR, IIR, median, or low-pass filters, and use them for signal processing in various applications. Here are some of them:

- fir1() - used to design FIR filters with any frequency characteristic
- filter() - used to process signals through a digital filter
- freqz() - used to calculate the frequency response of a digital filter
- grpdelay() - used to calculate the group delay of a digital filter
- impz() - used to calculate the impulse response of a digital filter
- medfilt1() - used to process signals through a 1-dimensional median filter
They will mainly serve us to test the correctness of the algorithms we have written.

### Summary

The algorithms we write will have the task of solving the equations necessary to obtain the correct result and appropriately processing the input signal. The results will be presented in the form of graphs comparing the operation of the algorithms (input and output signal) and a description of the code we created.
