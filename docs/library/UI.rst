Display, buttons, LEDs
======================

Yozh contains a buzzer,  two NeoPixel  LEDs in the back and an 128x64 OLED screen and
two buttons on the top plate, for interaction with the user. To control them,
use the functions below.

LEDs
-----
.. function:: set_led_L(color)

.. function:: set_led_R(color)

   These commands set the left (respectively, right) LED to given color. Color
   must be a list of 3 numbers, showing the values of Red, Green, and Blue
   colors, each ranging between 0--255, e.g. ``bot.set_led_L([255,0,0])`` to set
   the left LED red.  You can also define named colors for easier use, e.g.

.. code-block:: python

    BLUE=[0,0,255]

    bot.set_led_L(BLUE)

.. function:: set_leds(color_l, color_r)

   Set colors of both LEDs at the same time. As before, each color is a list of
   three values. Parameter ``color_r`` is optional; if omitted, both LEDs will
   be set to the same color.

.. function:: set_led_brightness(value)

   Set the maximal brightness of both LEDs to a given value (ranging 0-255).
   Default value is 64 (i.e., 1/4 of maximal brightness), and it is more than
   adequate for most purposes, so there is rarely a need to change it. Setting
   brightness to 255 would produce light bright enough to hurt your eyes (and
   drain the batteries rather quickly)


Buzzer
------

.. function:: buzz(freq, dur=0.5)

    Buzz at given frequency (in hertz) for given duration (in seconds).
    Second parameter is optional; if omitted, duration of 0.5 seconds is used.

Buttons
-------

.. function:: wait_for(button)

   Waits until the user presses the given button. There are two possible
   pre-defined buttons: ``bot.button_A`` and ``bot.button_B``

.. function:: is_pressed(button)

   Returns ``True`` if given button is currently pressed and ``False`` otherwise.

.. function:: choose_button()

    Waits until the user presses one of the two buttons. This function returns
    string literal ``A`` or ``B`` depending on the pressed  button:

.. code-block:: python

    bot.set_text("Press any button", 0)
    #wait until user presses one of buttons
    if (bot.choose_button()=="A"):
        # do something
    else:
        # button B was pressed
        # do something else


OLED
----

The easiest way to interact with OLED display is by using the commands below.

.. function:: clear_display()

   Clears all text and graphics from display

.. function:: set_text(text, line_number)

   Prints a line of text on OLED display, on line number `line_number`, erasing
   all previous contents of that line. Note
   that line numbers start with 0, not 1!
   If the text to print includes line break character `\n`, the line is broken
   and continues on next line, e.g.

.. code-block:: python

   bot.set_text("Initialized", 0)
   bot.set_text("Press A to \n continue", 1)
