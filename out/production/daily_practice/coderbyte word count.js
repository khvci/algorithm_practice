/*

Have the function WordCount(str), take the str string parameter being passed and return 
the number of words the string contans. Words will be seperated by single spaces.

*/

function WordCount(str) 
  { 
  var count = 1;

	if (str == "") 
    {
		return 0
	  } else 
      {
      for (var i of str) 
        {
        if (i == " ") 
          {
          count += 1
          }
        }
	return count; 
      }
  }

console.log(WordCount("")); //returns 0
console.log(WordCount("a b c d")); //returns 4
