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
sleep(1.0)
# new messages on display

bot.set_leds(RED)
sleep(1.0)
bot.set_leds(GREEN)

bot.clear_display()
bot.set_text("Press button A \n to start", 0)
bot.wait_for(bot.button_A)
# distance test
bot.clear_display()
bot.set_text("Press button B \nfor next step", 2)
bot.set_text("Distances:",0) 
while not bot.is_pressed(bot.button_B):
    bot.set_text("{}  {} ".format(bot.ping_L(), bot.ping_R()),1)
    sleep(0.2)
    
bot.buzz(440,1.0)
    
# reflectance array test
bot.linearray_on()
bot.clear_display()
bot.set_text("Press button B \nfor motor test", 3)
bot.set_text("Reflectance:",0) 
while not bot.is_pressed(bot.button_B):
    # print raw values
    raw_values = ""
    for i in range(8):
        raw_values+=str(bot.linearray_raw(i))+";"
        if i==3:
            raw_values+="\n"
    bot.set_text(raw_values, 1)
    sleep(0.2)

bot.clear_display()
bot.set_text("Lift robot",0)
sleep(2.0)
bot.set_text("Press button B \nfor next step", 2)

#motor test 
bot.set_motors(30,30)
while not bot.is_pressed(bot.button_B):
    bot.get_encoders()
    bot.get_speeds()
    bot.set_text("Enc: {} {}".format(bot.encoder_L, bot.encoder_R), 0)
    bot.set_text("Speed:{} {}".format(bot.speed_L, bot.speed_R), 1)
    sleep(0.2)
bot.stop_motors()
bot.clear_display()

#drive test
bot.configure_PID(maxspeed=4200)
# enable PID control
bot.PID_on()
bot.set_text("place robot on\n floor. Press A\n when ready",0)
bot.wait_for(bot.button_A)

bot.clear_display()
bot.set_text("Press button B \nto stop", 3)

while not bot.is_pressed(bot.button_B):
    # go forward for 60 cm at 50% speed
    bot.go_forward(60,50)
    
    distance = bot.get_distance()
    bot.set_text("dist: {}".format(distance),0)
    bot.turn(90)
    sleep(1.0)

bot.stop_motors()
bot.clear_display()
bot.set_text("Test complete!",1)
