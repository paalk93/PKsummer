function onclickExample(){
  alert("You clicked the element.")
}
function onmouseoverExample(){
  alert("You hovered the element")
}
function showDetails(fruit) {
    var fruitColor = fruit.getAttribute("data-fruit-color");
    alert("The color of the " + fruit.innerHTML + " is " + fruitColor + ".");
}
