function print(x) {
    // I like python :D
    console.log(x);
}
function ord(str) {
    // F U JS
    return str.charCodeAt(0);
}
function chr(id) {
    // JS is so starnge
    return String.fromCharCode(id);
}

function main() {
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
        // return -1996285287;
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
      function decode(keedon, aaronmichael, shuayb) {
        x = shuayb % 2;
        y = aaronmichael.charCodeAt((shuayb - x) / 2);
        if (!x) {
          y >>= 4;
        }
        ;
        y &= 15;
        return xor(keedon, y);
      }
      function runcode(teyanna, tawauna, eulys) {
        tawauna = decode(tawauna, eulys, 0);
        try {
          var yency = {x: tawauna, d: decode, k: eulys, o: xor2, s: teyanna};
          var jhovani = 0;
          for (var i = 0; i < eulys.length * 2; i++) {
            new Function("s", yency.x)(yency);
          }
          ;
          return yency.s;
        } catch (e) {
          throw "bad";
        }
      }
    seed(18458);

    FALSE = 1;
    TRUE = 0;

    j ++;
    input = "flag{1234_aRa_asaaaaaaaaa_a3Bn9cQWv}"
    console.log(input);

    var a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z;
    a = 1;
    b = Math.pow(++a, a + ++a + 0) - 1;
    c = Math.pow(a++ - 1, a += 1 + 1) - 1;
    d = random() + random() & b;
    input_length = (random() & c);

    f = random() & b - d;
    input = input.substr(a).split("}")[0];
    

    // a = 6, b = 31, c = 63, d = 13
    console.log(input);

    if (!/^[A-Za-z0-9_]+$/.test(input)) {
        throw "bad";
    };
    
    f *= f;
    input = input.split("_");
    console.log(input.length, input[1].length, input[1][1]);
    // flag{a0_aRa_a2_a3}
    if (input.length != f || input[1].length != f - 1 || input[1][1] != "R") {
        throw "bad";
    }

    console.log(m_z, "m z");
    seed(parseInt(input[0]));
    g = ~random() ^ hash(input[2]) ^ hash(input[3]);
    console.log(g);

    seed(97632e3);
    e = Math.floor(b / (FALSE - TRUE + FALSE)); // 15
    c = random() >> e - TRUE + FALSE & b; // 14
    d = random() >> e - TRUE + FALSE & b; // 3
    console.log(e, c, d);
    if (input[2].length != 11) {
      throw "bad";
    }

    // if (input[3] != runcode(signature, xor($("msg").value, 11), input[2])) {
    //     throw "bad";
    // }
}

main();

