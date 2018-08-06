// Array example start
function examplePrintArray(){
  var arrayExampleCountries = ["Norway", "Germany", "Sweden", "Greece"];
  var arrayExampleList = document.getElementById("arrayExampleList");
  arrayExampleList.innerHTML ="";
for (var i = 0; i < arrayExampleCountries.length; i++){
arrayExampleList.innerHTML += "<li>" + arrayExampleCountries[i] + "</li>"
  }
}
// Array example end

// Object example start
function examplePrintObject(){
  var objectExamplePerson = {name:"PK", age: 25, gender: "Male"};
  var objectExampleList = document.getElementById("objectExampleList");
  objectExampleList.innerHTML ="";

  for(x in objectExamplePerson){
  objectExampleList.innerHTML += "<li>" + objectExamplePerson[x] + "</li>"  
  }
}
// Object example end
