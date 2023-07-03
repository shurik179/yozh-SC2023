.. _primer:
***************************
Python Primer
***************************
These commands are not directly related to Yozh, but can serve as useful cheat
sheet for people new to MicroPython.

For more information about MicroPython on RP2040 microcontrollers, see
`MicroPython website <https://docs.micropython.org/en/latest/rp2/quickref.html#>`__

Recall that in Python, indentation is important!

Comments
========

Single line comments are indicated by #: anything after # till the end of the line is ignored by the computer.
Multiline comments are indicated by three double quote symbols:

.. code-block:: python


   """
   This is a
   multiline comment
   """

Variables
=========

In Python, you do not need to declare a variable; you can just start using it:


.. code-block:: python

   x = 20.5 #float (decimal) number

   address = 0x29 #hexadecimal number

   text = "Welcome" #string


As any computer language, Python also has logic (boolean) variables. It has two
predefined logic  constants: `True`, `False`

You can use common logic operations: `and`, `or`, `not`.
Note that unlike many other languages, Python doesn’t use && and || for logic operations

Comparison: to compare if two values are equal,  use == operator:

.. code-block:: python

   if x==5 and y>0:
      ...

Warning: Writing `if x=5` would give a very different result (single equality
is assignment, not comparison) - this is one of the most common beginner mistakes
in any programming language


Lists
=====
Lists in Python are analogs of arrays in other languages.
To define a list, use

.. code-block:: python

   list = ["A", "B", "C"]

To access i-th item in the list, use `list[i]`. Note that in a list  of N
elements, index ranges from 0 to N-1.

To find current length of a list, use function `len(list)`.

To append one item  the list at the end, use `append()` function:
`list.append("D")`

To join (concatenate) two lists, you can use +:

.. code-block:: python

   list=["A", "B", "C"]+["X", "Y", "Z"]


There are other list-related functions - check Python docs.


Python control structures
=========================

Conditional
-----------

.. code-block:: python

   if condition:
      some operators
   else:
      other operators

`else:` part is optional. Note that there is no need to enclose condition
in parentheses (but no harm if you do it anyway). If you need more options,
use the form below; `elif` is short for `else if`

.. code-block:: python

   if condition:
     some operators
   elif:
     some more operators
   else:
    other operators




Loops
-----
* Common while loop:

.. code-block:: python

   while condition:
      operators

* For loop: repeat for every value of `i` from the list.

.. code-block:: python

   for i in list:
     operators
     ...
     operators

A list can be defined  explicitly, e.g. list = ["A", "B", "C"].
More commonly, if you want the  loop to be repeated N times,
for all values of i from 0 to N-1, you use `for i in range(N)`


Printing
========

To print a message to standard output (for programs running on the robot, it
would be Shell tab of Thonny editor), use `print()` function:

.. code-block:: python

   print("Hello, world!")

The argument can be a string, a variable, or any other expression.
You can also provide several arguments separated by commas: `print(x,y,z)`.

By default, every print command will also print a newline at the end, moving
to the next line in the output. To suppress it, use `end` parameter:
`print("Hello, world!", end = "")`

(in this case, end parameter is the empty string)

To print a message containing some numerical values (or other variable types),
insert in your message placeholders {} in the places where numerical values
would go, and then use `format` function as follows:


.. code-block:: python

   message = "Acceleration: x={} y={} z={}"
   print(message.format(a_x, a_y, a_z))

It is also possible to format the numbers, specifying how many decimal places
you want printed; refer to Python documentation for details.


Time control
============

The commands below  are defined in `time` module.  Thus, to use them you must put
`include time`  in your Python file.

To pause the execution of the program for given time, use

.. code-block:: python

   time.sleep(time_in_seconds)

To time various events, you can use the `time.ticks_ms()` milliseond counter
(this is specific to RP2040 microcontoller):

.. code-block:: python

   t0 = time.ticks_ms()
   ...
   t1=time.ticks_ms()
   time_interval = t1-t0 #duration in milliseconds



Miscellaneous
=============
Python has a special name for non-existing (undefined) values, `None`. Thus,
to test if  a variable has been defined,  you can use

.. code-block:: python

   if x is None:
      ...


(for technical reasons, you can’t use if `x==None`).

Note that it is different from value 0 or empty string. `None` means that the
variable has not been defined yet, which is different from being defined and
given 0 value.

Also, Python has a special function that does nothing, named `pass`:

.. code-block:: python

   while (bot.sensor_on_white(bot.A1)):
      pass


This is commonly used as a placeholder to be replaced later by actual commands.
