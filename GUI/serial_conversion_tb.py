
def to_hex(txt):
    return txt.encode('utf-8').hex()

def to_decimal(hex):
    counts_per_sec = []
    for i in range(0, len(hex), 2):
        byte = hex[i:i+2]
        counts = int(hex, 16)
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

path = 
conversions(path)