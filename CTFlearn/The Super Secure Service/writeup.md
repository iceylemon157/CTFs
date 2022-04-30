# The Super Secure Service

## Description

## Remark

I am a newbie at JS, so I spent lots of time understanding the syntax.
There will be some syntax that I learn't below in the solution.

## Solution

First of all we use a [JS Deobfuscator](https://deobfuscate.io/) to make our code have better looking.

Then we modify more parts of the code to make it more readable.

After modifying it would look like the ```deobf_verify.js```.

Then we can start to analyze our code.

Since the PRNG generate the same number with the same seed. We can run the code and determine some value. After the process we can obtain following properties of our flag:

1. length of flag is 36
2. flag starts with flag{ and end with }
3. flag are separate to four parts by three '_'
4. the second part of flag has three characters and the second one is 'R'
5. the first part of the flag is a hex number
6. the length of the third part of the flag is 11
7. the hash of flag is ```-1996285287```
8. ```seed(parseInt(input[0])); g = ~random() ^ hash(input[2]) ^ hash(input[3]);``` value of g is ```1865600952```

Besides the above properties, we can take a look at this code.
```js
if (input[3] != runcode($("sign").value, xor($("msg").value, c - d), input[2])) {
    throw "bad";
}
```
So we want to know what does ```runcode``` returns.

```js
function runcode(sign, xored_msg, input2) {
    xored_msg = decode(xored_msg, input2, 0);
    var funcs = {x: xored_msg, d: decode, k: input2, o: xor2, s: sign};
    for (var i = 0; i < input2.length * 2; i++) {
        new Function("s", funcs.x)(funcs);
    }   
    return funcs.s;
}
```

The line ```new Function("s", funcs.x)(funcs);``` means to declare a funtion who has its content as funcs.x and 's' as parameter.
In other words, we can rewrite the function like this:
```js
const func = (s) => {funcs.x};
func(funcs);
```

Reference: [[Function() js]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/Function)


```funcs.x``` has to be something we can run. Take a look at the decode function.
```js
function decode(xored_msg, flag2, val) {
    x = val % 2;
    y = flag2.charCodeAt((val - x) / 2);
    if (!x) {
        y >>= 4;
    }
    y &= 15;
    return xor(xored_msg, y);
}
```
We don't know the value of flag2 yet, but we can see that the value of y can only be 0~15,
and the result of ```xor(xored_msg, y)``` has to be executable code.

So we can come up with a brute force method.
We can iterate through 0~15 and test whether it is a code (to have deeper understand watch the python script).

After brute force for the first time we can see that the decrypted msg looks like this:
```js
"s.x = s.d( some parameters, 19); s.s = s.o( some parameters );"
```
It's changing the value of xored_msg and signature.
After running for several times, we can note that the format of the msg always look similar.
Hence we can easily run the code for 22 times.

In the progress, we can retrieve both flag2 and flag3 from it.

Since we have flag2 and flag3, we can look to this part of code:

```js
seed(parseInt(input[0]));
g = ~random() ^ hash(input[2]) ^ hash(input[3]);
console.log(g);
if (g != 1865600952) {
    throw "bad";
}
```

Since we know that ```input[0]``` is a hex string, we can easily brute force 0 to 0xfff to find ```input[0]```.

If we calculate the string length, we can see that the first part of the flag should have length 4.
But from this line ```input = input.substr(6).split("}")[0];```  we can see that ```input[0]``` only have the last 3 characters of the first part.

After finding the input0, the hint we left is the hash of the whole string.
We can brute force the first character of the first part of string and the second part of string to retrieve the flag.

```Array.prototype.reduce.call()```
Means to use the function of Array.prototype.reduce
Since reduce is a function in Array.prototype, we have to use the function call to use this function.
[[function call]](https://www.w3schools.com/js/js_function_call.asp)

