//https://www.hackerrank.com/challenges/js10-if-else/problem?isFullScreen=true

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

function getGrade(score) {
    let grade;
    // Write your code here
    if (score < 31 && score > 25) {
        return("A");
    }
    else if (score < 26 && score > 20) {
        return("B");
    }
    else if (score < 21 && score > 15) {
        return("C");
    }
    else if (score < 16 && score > 10) {
        return("D");
    }
    else if (score < 11 && score > 5) {
        return("E");
    }
    else if (score < 6 && score >= 0) {
        return("F");
    }
    
    return grade;
}


function main() {
    const score = +(readLine());
    
    console.log(getGrade(score));
}
