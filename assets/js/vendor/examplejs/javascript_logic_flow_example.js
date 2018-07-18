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
