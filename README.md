# Microrack

The purpose of Microrack is to be compact, cheap, easy to prototype and electronically compatible with other CV/gate systems, specifically Eurorack.

Microrack is a mixed analog/digital system, with primarily analog sound and digital control.
It is based on a bus which provides power, I2C, synchronization, and analog lines.
Rather than patch cables and knobs, analog multiplexers are used to connect sound signals, while control signals are connected over I2C.

## Physical layout

The baseboard contains power regulation, the user interface, and the I2C master IC.
It has rows of female 0.1" headers to plug in modules. The headers have the following layout.

* +12V
* -12V
* +5V
* SDA
* SCL
* SYNC
* GND
* GND
* Analog bus 1
* Analog bus 2
* Analog bus 3
* Analog bus 4
* Analog bus 5
* Analog bus 6
* Analog bus 7
* Analog bus 8

It is suggested that the above header could be repeated for double-width or triple-width bus systems.
In the future, an alternative layout with edge connectors might be considered.

## Electrical specification

The system aims to be compatible with CV [as specified by Doepfer](http://www.doepfer.de/a100_man/a100t_e.htm). Most importantly, audio signals are nominally 10Vpp, from -5V to +5V. Control signals are typically digital, but when analog control is used, they should follow the Doepfer specification.

In addition to -12V and +12V, +5V is also an integral part of the bus, due to the mixed digital nature. It is not optional, like it seems to be on Eurorack.

I2C runs at 400KHz fast mode or higher. Pull-up resistors are on the base board. The SYNC line is clocked at 100Hz and should trigger slave commits on rising edge.

## Software specification

The I2C master contains a virtual patch bay that allows connecting digital control signals and set analog multiplexers. It transfers data between each slave according to this patch bay, and then rises the SYNC line.
I2C slave devices should "hold" writes until a rising edge on the SYNC line, at which point they should be "commited". This is to ensure synchronous action throughout the system.

The I2C protocol uses one byte to indicate the port number, followed by 2 byte of data to be written, or a read transmission of up to 16 bytes.

| Address | 2 byte | 1 bytes | 13 bytes |
| --- | --- | --- | --- |
| 0x00 | Reserved | Number of ports | Product name |
| 0x01 | Value | Type | Port name |
| 0x02 | Value | Type | Port name |
| ... | Value | Type | Port name |
| 0xff | Value | Type | Port name |

That is, the first port of 16 bytes contains the product information, and each subsequent port contains 16 bytes that describe an input/output port. There is a maximum of 255 ports, but the actual number of ports in use is described in 0x00. Product/Port name contains an UTF-8 string with a human-readable name for the port.

The type register contains flags that describe the data in the value register. Interpretation of this register is to be determined. Example: input/output, signned/unsigned/fixed-point/bitmask, and maybe unit? visual representation? category?

## Reference implementation

This repository will host schematics and software for my implementation of the above.
It cuttently contains

* I2C master/slave Arduino library
* Base board & power supply
* LFSH Noise source
