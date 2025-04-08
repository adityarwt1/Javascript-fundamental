function multiplyAll(arr) {
    var product = 1;
    // Only change code below this line
    for (var i = 0; i < arr.length; i++) {
      for (var j = 0; j < arr[i].length; j++) {
        product = product * arr[i][j];
      }
    }
    // Only change code above this line
    return product;
  }
  const happy = "happyu"
  if(typeof happy === "string"){
    console.log("happy is happy because")
  }
  multiplyAll([[1, 2], [3, 4], [5, 6, 7]]);
/// 
  /// inn there funtion of loops who are first getting thhe index from first lopp and second loop getting the item in whic array have at ttthe at we are gettting the product of the array which have