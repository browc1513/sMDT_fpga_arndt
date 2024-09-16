
def to_hex(txt):
    return txt.encode('utf-8').hex()

def to_decimal(hex):
    counts_per_sec = []
    for i in range(0, len(hex), 2):
        byte = hex[i:i+2]
        counts = int(byte, 16)
        counts_per_sec.append(counts)
    return counts_per_sec

def conversions(path):
    with open(path, 'r', encoding = 'utf-8') as file:
        txt = file.read()
    print("Original data:", txt)
    hex = to_hex(txt)
    print("Data in hexadecimal:", hex)
    count = to_decimal(hex)
    print('Counts per second:', count)

path = "C:/Users/Alexis/Documents/GitHub/sMDT_fpga_arndt/GUI/COM7_2024_08_29.17.43.42.568.txt"
conversions(path)