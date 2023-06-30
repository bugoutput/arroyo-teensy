# arroyo-teensy
Low-cost hydroacoustic datalogger with similar capability to the [Arroyo](https://github.com/bugoutput/arroyo-hydroacoustic-logger), but based on the [Teensy](https://www.pjrc.com/teensy/) microcontroller platform rather than the Raspberry Pi. Using Teensy results in much lower power consumption vs. the previous system, enabling the Arroyo-Teensy to continuously record audio in the field for long periods of time off of battery power without requiring a solar array. This generation of Arroyo was designed for low cost pipeline leak detection applications in addition to hydroacoustic bedload transport measurements.
## Features
- 600MHz ARM Cortex M7 Processor (Teensy 4.1)
- Onboard RTC and optional GPS-disciplined oscillator
- Floating-point coprocessor enables realtime 256-point FFT
- 55 GPIO pins facilitate large-scale sensor integration for automatically labeling AI training data and triggering recording based on specific sensor events. GPIO includes 8 serial interfaces, 3 SPI, 3 I2C, 2 I2S/TDM and 1 S/PDIF ports. 
- Micro-SD card data logging
- 16-bit, 44.1ksps ADC using [Teensy Audio Board](https://www.pjrc.com/store/teensy3_audio.html)
- Custom input-protection and active buffer circuits optimized for piezo vibrometry and hydrophone data acquisition
- Impedance-matched custom piezo vibration sensors for pipeline leak detection
  
