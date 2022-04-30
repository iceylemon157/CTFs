function check2() {
    var m_w = 123456789;
    var m_z = 987654321;
    var mask = 4294967295;
    function seed(i) {
      m_w = i;
    }
    function random() {
      m_z = 36969 * (m_z & 65535) + (m_z >> 16) & mask;
      m_w = 18e3 * (m_w & 65535) + (m_w >> 16) & mask;
      var result = (m_z << 16) + m_w & mask;
      return result;
    }
    function hash(param) {
      var temp = 4294967295;
      return Array.prototype.reduce.call(param, function (a, b) {
        return a * 31 + b.charCodeAt(0) & temp;
      }, 0);
    }
    function xor(verita, kalliyah) {
      var z = "";
      for (var i = 0; i < verita.length; i++) {
        z += String.fromCharCode(verita.charCodeAt(i) ^ kalliyah);
      }
      ;
      return z;
    }
    function xor2(kashaunda, amannda) {
      var z = "";
      for (var i = 0; i < kashaunda.length; i++) {
        z += String.fromCharCode(kashaunda.charCodeAt(i) ^ amannda.charCodeAt(i % amannda.length) & 15);
      }
      ;
      return z;
    }
    function decode(xored_msg, input2, val) {
        x = val % 2;
        y = input2.charCodeAt((val - x) / 2);
        if (!x) {
            y >>= 4;
        }
        y &= 15;
        return xor(xored_msg, y);
    }
    function runcode(sign, xored_msg, input2) {
        xored_msg = decode(xored_msg, input2, 0);
        var funcs = {x: xored_msg, d: decode, k: input2, o: xor2, s: sign};
        for (var i = 0; i < input2.length * 2; i++) {
            new Function("s", funcs.x)(funcs);
        }   
        return funcs.s;
    }    
    seed(18458);
    j++;
    input = $("code").value;
    var a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z;
    a = 1;
    TRUE = j == j;
    FALSE = !TRUE;
    b = Math.pow(++a, a + ++a + TRUE) - FALSE + TRUE;
    c = Math.pow(a++ - FALSE, a += FALSE + FALSE) - FALSE;
    d = random() + random() & b;
    if (!input.startsWith("flag{") || input.substr(-FALSE) != "}" || hash(input) != -1996285287 || input.length != (random() & c)) {
      throw "bad";
    }
    ;
    f = random() & b - d;
    input = input.substr(a).split("}")[+TRUE];
    if (!/^[A-Za-z0-9_]+$/.test(input)) {
      throw "bad";
    }
    ;
    f *= f;
    input = input.split("_");
    if (input.length != f || input[+FALSE].length != f - FALSE - TRUE || input[+FALSE][+FALSE] != "R") {
      throw "bad";
    }
    ;
    try {
      seed(parseInt(input[TRUE + TRUE]));
      g = ~random() ^ hash(input[FALSE + FALSE]) ^ hash(input[f - FALSE + TRUE]);
      console.log(g);
      if (g != 1865600952) {
        throw "bad";
      }
    } catch (e) {
      throw "bad";
    }
    ;
    seed(97632e3);
    e = Math.floor(b / (FALSE - TRUE + FALSE));
    c = random() >> e - TRUE + FALSE & b;
    d = random() >> e - TRUE + FALSE & b;
    if (input[FALSE + FALSE - TRUE].length != c - d) {
      throw "bad";
    }
    ;
    if (input[d] != runcode($("sign").value, xor($("msg").value, c - d), input[FALSE + FALSE])) {
      throw "bad";
    }
  }
  