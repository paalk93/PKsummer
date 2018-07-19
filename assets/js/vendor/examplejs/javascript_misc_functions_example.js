// Array example start
function examplePrintArray(){
  var arrayExampleCountries = ["Norway", "Germany", "Sweden", "Greece"]
  var arrayExampleList = document.getElementById("arrayExampleList");
  arrayExampleList.innerHTML ="";
for (var i = 0; i < arrayExampleCountries.length; i++){
arrayExampleList.innerHTML += "<li>" + arrayExampleCountries[i] + "</li>"
  }
}
// Array example end
