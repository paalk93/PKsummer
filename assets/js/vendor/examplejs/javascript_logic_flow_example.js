// Simple if else statement start
function jsExampleIfElse() {
  var exampleDiv = document.getElementById("if-else-example-div");
  if(exampleDiv.style.background == "grey"){
    exampleDiv.style.background = "coral"
  }
  else{
    exampleDiv.style.background = "grey"
  }
}
// Simple if else statement end

// If Else If Else start
function jsExampleIfElseIf() {
  var exampleP = document.getElementById("if-else-example-p");
  if(exampleP.innerHTML == "Hello World"){
    exampleP.innerHTML = "World Hello"
  }
  else if(exampleP.innerHTML == "World World"){
    exampleP.innerHTML = "Hello World"
  }
  else{
    exampleP.innerHTML = "World World"
  }
}
// If Else If Else End

// Switch case start
function jsSwitchExample(){
  var valueExample = document.getElementById("switch-example-input").value
  var switchExampleP = document.getElementById("switch-example-p")
switch(valueExample){
  case "1":
    switchExampleP.innerHTML ="You typed 1."
  break;
  case "2":
    switchExampleP.innerHTML ="You typed 2."
  break;
  case "3":
    switchExampleP.innerHTML ="You typed 3."
  break;
  case "4":
    switchExampleP.innerHTML ="You typed 4."
  break;
  case "5":
    switchExampleP.innerHTML ="You typed 5."
  break;
  default:
    switchExampleP.innerHTML ="Please write a number between 1-5"
       }
}
// Switch case end
