FROM ubuntu:latest

RUN apt-get update 
RUN apt-get install -y python3

CMD [ "python3", "-c", "\n\
def isHappy(n):\n\
    used = []\n\
    while(n > 1):\n\
        if(n in used):\n\
            return False\n\
        used.append(n)\n\
        num = []\n\
        a = n\n\
        while(a >= 10):\n\
            new = a%10\n\
            a = a//10\n\
            num.insert(0,new)\n\
        num.insert(0,a)\n\
        result = 0\n\
        for i in num:\n\
            result += i*i\n\
        n = result\n\
    return True\n\
print(isHappy(19))\n\
print(isHappy(2))" ]