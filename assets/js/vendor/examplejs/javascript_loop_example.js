// Simple for loop start
function simpleForLoopExample(){
  var forExampleCountries = ["Norway", "Germany", "Sweden", "Greece"];
  var forLoopExampleList = document.getElementById("forLoopExampleList");
  forLoopExampleList.innerHTML ="";
  for (var i = 1; i < forExampleCountries.length; i++){
    forLoopExampleList.innerHTML += "<li>" + forExampleCountries[i] + "</li>"
  }
}
// Simple for loop end

// Simple for in loop start
function simpleForInLoopExample(){
  var forInExamplePerson = {name:"PK", age:25, gender:"Male"};
  var forInLoopExampleList = document.getElementById("forInLoopExampleList");
  forInLoopExampleList.innerHTML =""
  for (x in forInExamplePerson){
    forInLoopExampleList.innerHTML += "<li>" + forInExamplePerson[x] + "</li>";
  }
}
// Simple for in loop end

// Simple for while loop start
function simpleWhileLoopExample(){
  var whileLoopExampleList = document.getElementById("whileLoopExampleList");
  var whileExampleNumber = 1;
  while(whileExampleNumber <= 5){
    whileLoopExampleList.innerHTML += "<li>" + whileExampleNumber + "</li>"
    whileExampleNumber++;
  }
}
// Simple for while loop end

// Simple do while loop start
function simpleDoWhileLoopExample(){
  var doWhileLoopExampleList = document.getElementById("doWhileLoopExampleList");
  var doWhileExampleNumber = 1;
  doWhileLoopExampleList.innerHTML ="";
do{
  doWhileLoopExampleList.innerHTML = "<li>" + doWhileExampleNumber + "</li>";
  doWhileExampleNumber ++;
}
while(doWhileExampleNumber <= 0);
}
// Simple do while loop end

// Loop using for and in start
function forWithInLoopExample(){
  var loopExampleArrayWithObject = [
    {name:"Per", lastname:"Askeladden 1"},
    {name:"Pål", lastname:"Askeladden 2"},
    {name:"Espen", lastname:"Askeladden 3"}
  ]
  var forWithInExampleList = document.getElementById("forWithInExampleList");
  forWithInExampleList.innerHTML ="";
  for (var i = 0; i < loopExampleArrayWithObject.length; i++){
    var forInLoopExampleObject = loopExampleArrayWithObject[i];
    for (var x in forInLoopExampleObject){
      var loopExampleObjectValue = forInLoopExampleObject[x]
      forWithInExampleList.innerHTML += "<li>" + loopExampleObjectValue + "</li>";
    }
  }
}
// Loop using for and in end
