import tkinter as tk
import time
import serial 
import numpy as np

#GUI to display counts 
#c = tk.Tk()
#c.title('Particle Counts')
#c.geometry("500x300")
#c.mainloop()

#Connecting to the serial port
uart = serial.Serial('COM4', 9600, timeout = 1)

def to_hex(txt):
    return txt.encode('utf-8').hex()

def to_decimal(hex):
    counts_per_sec = []
    for i in range(0, len(hex), 2):
        byte = hex[i:i+2]
        counts = int(byte, 16)
        counts_per_sec.append(counts)
    return counts_per_sec

if uart.is_open:
    print('Reading data...')
    start = time.time()
    duration = 60
    while time.time() - start < duration:
        data = uart.readline()
        if data:
            txt = data.decode('utf-8').strip()
            hex = to_hex(txt)
            count = to_decimal(hex)
            print(count)
    print("Done reading data.")
    uart.close()
else: 
    print('Not connected/not receiving data.')
