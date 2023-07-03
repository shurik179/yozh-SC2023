# Basic example of Yozh Bot use, with LEDs and buttons

from time import sleep
from yozh import Yozh

RED=[255,0,0]
GREEN=[0,255,0]
BLUE=[0,0,255]
bot = Yozh()

bot.begin()

# buzz at frequency 440Hz for 1 sec
bot.buzz(440,1.0)
# wait for 3 sec
sleep(3.0)
# new messages on display
bot.clear_display()
bot.set_text("Press button A \n to continue", 0)
#wait until user presses button A
# there are two buttons: button_A, button_B
bot.wait_for(bot.button_A)

while True:
    bot.clear_display()
    dist = bot.ping_L()
    bot.set_text("Distance:{}".format(dist),0)
    sleep(0.2)
