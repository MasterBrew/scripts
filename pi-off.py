#!/bin/python

import RPi.GPIO as GPIO
from time import sleep
import os

gpio_pin_number=21
GPIO.setmode(GPIO.BCM)
GPIO.setup(gpio_pin_number, GPIO.IN, pull_up_down=GPIO.PUD_UP)


try:

	GPIO.wait_for_edge(gpio_pin_number, GPIO.FALLING)
	print('Shutting down Sequence Started!')
	sleep(2)
	print('System Going down....')
	sleep(1)
	print('Goodbye!')
	os.system('sudo shutdown -h now')
except:
	pass

GPIO.cleanup()
