# I wrote and debugged this code with all the convoluted "int" variable names.
# Was it confusing? Yes. Was debugging hard? Yes.
# Did I spend more time than I should have on this problem? Yes

def Eating(eat):
    return str(int(eat)*3)

def EAt(eat, eats):
    # print(eat, eats)
    eat1 = 0
    eat2 = 0
    eateat = 0
    eAt = ""
    while eat1 < len(eat) and eat2 < len(eats):
        if eateat%3 == 0:
            eAt += eats[eat2]
            eat2 += 1
        else:
            eAt += eat[eat1]
            eat1 += 1
        eateat += 1
    return eAt

def aten(eat):
    return eat[::3-4]

def eaT(eat):
    return str(int(eat[:3])*3) + eat[::-1]

def aTE(eat):
    return eat#*len(eat)

def Ate(eat):
    return "Eat" + str(len(eat)) + eat[:3]

def Eat(eat):
    if len(eat) == 9:
        if str.isdigit(eat[:3]) and\
            str.isdigit(eat[len(eat)-3+1:]):
                eateat = EAt(str(int(eat[:3])*3) + eat[::-1], "Eat9" + eat[::-1][:3])
                if eateat == "E10a23t9090t9ae0140":
                    flag = "eaten_" + eat
                    print("absolutely EATEN!!! CTFlearn{",flag,"}")
                else:
                    print("thats not the answer. you formatted it fine tho, here's what you got\n>>", eateat)
        else:
            print("thats not the answer. bad format :(\
            \n(hint: 123abc456 is an example of good format)")
    else:
        print("thats not the answer. bad length :(")

# print("what's the answer")
# eat = input()
# Eat(eat)
