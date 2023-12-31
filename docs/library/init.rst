Initialization and general functions
====================================

To begin using the library, you need to put the following in the beginning of
your `main.py` file:

.. code-block:: python

   from yozh import Yozh
   bot = Yozh()


This creates  an  object with name ``bot``, representing your robot.  From now
on, all commands you give to the robot will be functions and properties of ``bot``
object. We will not include the name bot in our references below; for example,
to use a command :func:`stop_motors()` described below, you would need to write
:func:`bot.stop_motors()`.

By default, creating bot object also initializes the OLED display; it will
produce errors if the OLED display is not found. If for some
reason you are not using OLED, you can initialize the robot using this form of
initialization command:

.. code-block:: python

   from yozh import Yozh
   bot = Yozh(oled = None)


Here are some basic functions:

.. function:: begin()

   Shows basic info (firmware version, battery voltage) on OLED screen

.. function:: fw_version()

   Returns firmware version as a string. e.g. `2.1`.

.. function:: battery()

   Returns battery voltage, in volts. For normal operation it should be at
   least 4.5 V.
