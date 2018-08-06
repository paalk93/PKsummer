function showTags(e){
  var tagsList = document.getElementById("navigationTagsList");
  tagsList.classList.toggle("pk-hidden-list");
  if(e.innerHTML == " \u002B"){
     e.innerHTML = " &minus;"
  }
  else {
    e.innerHTML = " &plus;"
  }
}

function showAttributes(e){
  var attributesList = document.getElementById("navigationAttributesList");
  attributesList.classList.toggle("pk-hidden-list");
  if(e.innerHTML == " \u002B"){
     e.innerHTML = " &minus;"
  }
  else {
    e.innerHTML = " &plus;"
  }
}

function showPseudoClasses(e){
  var pseudoList = document.getElementById("navigationPseudoList");
  pseudoList.classList.toggle("pk-hidden-list");
  if(e.innerHTML == " \u002B"){
     e.innerHTML = " &minus;"
  }
  else {
    e.innerHTML = " &plus;"
  }
}

function showLogicFlow(e){
  var logicFlowList = document.getElementById("navigationLogicFlowList");
  logicFlowList.classList.toggle("pk-hidden-list");
  if(e.innerHTML == " \u002B"){
     e.innerHTML = " &minus;"
  }
  else {
    e.innerHTML = " &plus;"
  }
}

function showForAndIn(e){
  var forAndInList = document.getElementById("navigationForAndInList");
  forAndInList.classList.toggle("pk-hidden-list");
  if(e.innerHTML == " \u002B"){
     e.innerHTML = " &minus;"
  }
  else {
    e.innerHTML = " &plus;"
  }
}

function showMajorParts(e){
  var majorPartsList = document.getElementById("navigationMajorPartsList");
  majorPartsList.classList.toggle("pk-hidden-list");
  if(e.innerHTML == " \u002B"){
     e.innerHTML = " &minus;"
  }
  else {
    e.innerHTML = " &plus;"
  }
}

function showEcto(e){
  var ectoList = document.getElementById("navigationEctoList");
  ectoList.classList.toggle("pk-hidden-list");
  if(e.innerHTML == " \u002B"){
     e.innerHTML = " &minus;"
  }
  else {
    e.innerHTML = " &plus;"
  }
}
