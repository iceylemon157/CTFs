from Crypto.PublicKey import RSA
from Crypto.Util.number import *

pub_key = RSA.importKey(open('cert').read())
n = pub_key.n
e = pub_key.e

with open('flag.enc', 'rb') as f:
	flag_enc = f.read()
	flag_enc = bytes_to_long(flag_enc)

