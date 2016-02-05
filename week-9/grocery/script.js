// groceryItem object constructor function, currently doing nothing with the done property
function groceryItem(name,count) {
  this.name = name;
  this.count = count;
  this.done = false;
}
// array that will hold all instances of the object groceryItem
var groceryList = [];
// function to append all of the nodes to ul that are in the groceryList array
function populateList() {
  for (var item in groceryList){
    var myElement = document.getElementById("grocery-test");
    var newText = document.createElement("li");
    newText.innerHTML = groceryList[item].count + " " + groceryList[item].name;
    myElement.appendChild(newText);
  }
}
// clears all of the items currently showing in the list to not double populate
function clearCurrent(){
  var myNode = document.getElementById("grocery-test");
  while (myNode.firstChild) {
    myNode.removeChild(myNode.firstChild);
  }
}

// brings clear and populate functions together to save space
function clearAndRepopulate(){
  clearCurrent();
  populateList();
}

// created array to check whether a groceryItem object exists with the name property equal
// to that of the item input to use in all of the add, delete and update functions
// returns a boolean
function contains(array, item) {
  for (var i in array) {
    if (array[i].name == item){
      return true;
    }
  }
  return false;
}

// addItem takes from the first form the item name and count, has some error handling,
// checks whether it already exists using the previously made contain function. If it
// passes all the error handling the groceryItem constructor is called on it, and the new
// object is put into the array. populateList and clearCurrent are called to make it show
// in the list
function addItem() {
  var itemToAdd = document.getElementById("add-item").elements.namedItem("item").value;
  if (itemToAdd == "" || itemToAdd.match(/[0123456789]/) != null){
    alert("item can't be blank or contain numbers");
    document.getElementById("add-item").reset();
    return null;
  }

  if (contains(groceryList, itemToAdd) == true){
    alert("You already have this item in your list, just update it!");
    document.getElementById("add-item").reset();
    return null;
  }

  var count = document.getElementById("add-item").elements.namedItem("count").value;
  if (count == "" || isNaN(count)){
    count = 1
  };

  var newItem = new groceryItem(itemToAdd,count)
  groceryList.push(newItem)
  clearAndRepopulate();
  document.getElementById("add-item").reset();
}

// similar to addItem, goes through error handling, if the item does exist and the form is
// given a valid number it will go through and set the groceryItem object with a name property
// set to the name property given in the form to have a count equal to a count given in the form
// Afterwards it clears and repopulates the list
function updateItem() {
  var itemToUpdate = document.getElementById("update-item").elements.namedItem("item").value;
  var count = document.getElementById("update-item").elements.namedItem("count").value;

  if (itemToUpdate == ""){
    alert("item can't be blank");
    return null;
  }
  if (contains(groceryList, itemToUpdate) == false){
    alert("You do not have this item in the list!");
    document.getElementById("update-item").reset();
    return false;
  }
  if (count == "" || isNaN(count)){
    alert("count can't be blank, thats the whole point of this!")
    return null;
  };

  for (idx in groceryList){
    if (groceryList[idx].name == itemToUpdate){
      groceryList[idx].count = count;
    };
  };
  clearAndRepopulate();
  document.getElementById("update-item").reset();
}

// goes through and returns an error if the array does not contain the given item. If it does
// it loops through the array, splices it out, and then clears and repopulates the list.
function deleteItem() {
  var itemToRemove = document.getElementById("remove-item").elements.namedItem("item").value;
  if (contains(groceryList,itemToRemove) == false){
    alert("What the hell! That is not in the list");
    document.getElementById("remove-item").reset();
    return null
  }
  for (var item in groceryList){
    if (groceryList[item].name == itemToRemove){
      groceryList.splice(item,1);
    };
  };
  clearAndRepopulate();
  document.getElementById("remove-item").reset();
}