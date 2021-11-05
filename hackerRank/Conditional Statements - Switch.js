'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.trim().split('\n').map(string => {
        return string.trim();
    });
    
    main();    
});

function readLine() {
    return inputString[currentLine++];
}

function getLetter(s) {
    let case1 = "aeiou";
    let case2 = "bcdfg";
    let case3 = "hjklm";
    let case4 = "npqrstvwxyz"
    let letter;
     switch(true) {
         case case1.includes(s[0]):
         letter = "A";
         break;
         case case2.includes(s[0]):
         letter = "B";
         break;
         case case3.includes(c[0]):
         letter = "C";
         break
         case (case4.includes(c[0])):
         letter = "D";
         break
        
         
     }
    
    return letter;
}


function main() {
    const s = readLine();
    
    console.log(getLetter(s));
}
