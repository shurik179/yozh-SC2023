First program
=============

To create your first program, start Thonny. Create a new file (using `File->New` menu item)
and copy-paste in the file the follwoing lines:


.. code-block:: python

   from yozh import Yozh
   GREEN=[0,255,0]
   bot = Yozh()

   bot.begin()

   # buzz at frequency 440Hz for 1 sec
   bot.buzz(440,1.0)
   # set leds to green
   bot.set_leds(GREEN)


Now, use `File->save as` menu item to save this file. When prompted, choose
`RP2040 device` and neter file name `main.py` (this is important!)

Click green arrow at the top of Thonny window to run this file now. You should
see the following message in Thonny window:

and the robot OLED display should show battery voltage and firmware version.

You can disconnect the robot from the computer and restart it by turning it off
and on. Upon restart, it will automatically run the code in `main.py`.

You can now experiment with the program, modifying it any way you like. Here
are some useful tips:

* You can have many programs uploaded to the robot, but by default, upon restart
  it will execute file wiht name `main.py`. Thus, it makes sense to always use
  this file for you program.

* If your program is running, or if you disconnected and reconnected your robot
  to the computer, you need to hit `STOP` icon to stop the program before you
  can save a new version of the program

* when copying and pasting, make sure that the  indentation is correct!

* When ending your work session, it is highly recommended to save a copy of the
  program to the computer!

  
