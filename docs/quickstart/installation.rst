Micro Python library  installation
====================================
Yozh is intended to be programmed in MicroPython  - an implementation of
Python programming language for microcontrollers. For general background on
MicroPython, please visit `MicroPython website <https://micropython.org/>`__
.


Before you can start programming Yozh, you need to do the following:

1. Install MicroPython firmware on ItsyBitsy board, as described
   `here <https://micropython.org/download/ADAFRUIT_ITSYBITSY_RP2040/>`__
   (you will need to remove the top plate to access the BOOTSEL button of ItsyBitsy).

2. Use Thonny editor (see next section) to copy file `yozh.py` (found in this repository)
   to ItsyBitsy board. This file contains Yozh MicroPython library.

3. Again using Thonny, cerate folder `lib` on the ItsyBitsy board and copy there
   files `ssd1306.py` and `vl53l0x.py`
