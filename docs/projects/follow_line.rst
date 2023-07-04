Line follower
=============

In this chapter, we program the robot to follow a line on the floor.
We will make a line by putting 1/2-inch wide
white gaffers tape on a black surface (a sheet of plywood painted black).
You can make your own field; just make sure the line is at least half  inch
wide and doesn't have sharp turns.

Before we start writing code, we need to describe the algorithm the robot
will be using - first in human language, then translate it to Python.

The obvious algorithm is "start on the line; go forward until you get off
the line; turn to get back on the
line; repeat".

However, this algorithm will result in very jerky movement: the robot
will only start correcting its course when it gets completely off the line.
Since we have a whole array of front line sensors, we can use them
to detect even small deviation from the right course - when the robot is still
on the line, but the line is not exactly under the center of the robot - and start
correcting before we get off the line. To correct, we would be going forward but
steering more to the left or right as needed: if the line is to the left of the robot
center, we must be steering left; if the line is to the right, we must be steering right.

This leads to the following algorithm

.. code-block:: python

    while True:
        get the line position
        go forward steering left or right as needed to correct the position

Note that here we are continuously correcting our steering using the sensor
feedback.  To translate this algorithm to an actual program, we need to
explain how one steers left or right.  This is easy: to have the robot
steer to the right, we need left motor to have more power than the right.
Thus, the command would be `setMotors(70+correction, 70-correction)`.
It makes sense to have the parameter `correction`  **proportional** to the
difference between the actual line position and the desried one: the
farther off we are,  the more we need to turn.

This gives the following program


.. code-block:: python

    Kp = 9
    while True:
        error = bot.line_position_white()
        
        go forward steering left or right as needed to correct the position

float Kp=1.5;
loop(){
    readLineSensors();
    int error=linePosition();
    setMotors(70+Kp*error, 70-Kp*error);
  }
\end{lstlisting}
Double-check the sign: if ~error~ is negative (line to the left), we need to
be steering left, so the left motor should have less  power than the right;
if ~error~ is positive, we will be steering right.

The value of the coefficient ~Kp=1.5~ was chosen so that when the line is
all the way to one side (error=100), the motors will be given power
$70+150=220$, $70-150=-80$. Since the motor power can't be more than a 100,
the actual values would be $100, -80$, so the robot will be essentially
turning in place.

You can test what happens if $1.5$ is replaced by another value. If the
value is too large, the robot will turn very quickly even for small
errors, which can lead to the robot spending most time turning left
and right, with very little headway. If the value is too small, the
robot will be turning very little, which can cause it to miss a sharp
turn. You can experiment to find the best value.

The same idea of correcting the course using sensor feedback, with
the correction proportional to the error, can be used in many
other situations. Instead of following the line, we could use it
to turn to  face an obstacle (using front proximity sensors), or
face up on an inclined surface, or many other similar situations.
