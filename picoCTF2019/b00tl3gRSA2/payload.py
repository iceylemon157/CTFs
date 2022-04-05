c = 90564028535837379341043559983038887301027901263818372025296230264869101957461912251956704600865366346343346145619698885633314632230650080690120141546122443653185758667964208705184254649723705321615520559249911146951242718061529510424948842726553447552505458062954925782297802308151523985545115081781124690617
n = 95600218225354735035984517683280987171227633473693857172547873212377145581327150448357559072230199855181081864910296822066361998167402446232998429904477644522793957956859911094405132338043514154846387213783848186702955549730780301220178295936166386891123891222381934693990296350072305559179776258243432366051
e = 87119212552800110480401961481279130824224910416244537160933161906446744061424865438260196537388104825533359052413715261673090584197503338516767096894656715118968573882515076711601979570514089737298816566174623929084511137298247267197435570025062551669967315383867224619086956572477288164448172600480636257441

from libnum import invmod, n2s, nroot

print(nroot(c, e))



'''
d * e = 1 (mod phi)
m ^ e = c (mod n)
c ^ d = m (mod n)


d = invmod(e, phi)
print(n2s(pow(c, d, n)))
'''
