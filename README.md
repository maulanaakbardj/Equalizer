# Equalizer
PROGRAM APLIKASI EQUALIZER MATLAB

# DIGITAL AUDIO EQUALIZER
One of the most used methods in digital signal processing is audio equalization. Equalizers are utilized in telecommunication systems, recording studios, acoustics, and many devices such as microphones and speakers. The purpose of developing an equalizer is to limit the factors that have a negative impact on the quality of an audio signal, which can be accomplished by boosting the parts of the signal. MATLAB provides a range of tools that are applicable to audio equalization. MATLAB’s Butterworth function is used in order to design filters for this equalizer. 

# Objectives
The main objective of designing the digital audio equalizer is to enhance the quality of the audio signal by boosting or attenuating the signal at the specific frequency.

Equalizing filters cancel out any phase delay between different frequency components.

The project also aims to cancel out the distortions due to imperfections in the speaker or due to poor acoustic features of a room, which  can greatly improve output of audio systems. 

# Project Specifications
![sss](https://user-images.githubusercontent.com/67249292/106098624-eec1b800-616b-11eb-8a15-9efa1fbc66a2.PNG)

# Methodology
![asas](https://user-images.githubusercontent.com/67249292/106098839-4c560480-616c-11eb-836f-b64edf5dddfb.PNG)

In the design process, the FIR filters were implemented in a way to create the proposed multi-band filtering algorithm. These discrete Finite Impulse Response filters (FIR) obtain the coefficients from the Butterworth transfer function to equalize a test signal.
	Implementing Filters
	h2=fir1(100,2*250/Fs,'lowpass');
	h3=fir1(100,[2*250/Fs 2*500/Fs],'bandpass');
	h4=fir1(100,[2*500/Fs 2*2000/Fs],'bandpass');
	h5=fir1(100,[2*2000/Fs 2*4000/Fs],'bandpass');
	h6=fir1(100,[2*4000/Fs 2*20000/Fs],‘highpass');

Plot the original and the filtered signal using FFT.

# GUI View

![1qsa](https://user-images.githubusercontent.com/67249292/106099243-f03fb000-616c-11eb-8363-1db5404e57cd.PNG)

![asasasas](https://user-images.githubusercontent.com/67249292/106099312-0a798e00-616d-11eb-8389-659c7700101b.PNG)

# Results
The browse button allows to access any audio file to play. The other buttons such as play, pause, resume and stop perform the operations of start, pause , continue and stop playing the audio signal.

The five sliders representing the five frequency bands are used to adjust the gain of the specific frequency band i.e. boosting and attenuation of the signal at the desired frequency.

The analysis of the filtered audio signals is performed using the Fast Fourier Transform(FFT).  

# Demo 
Open folder cek/result
