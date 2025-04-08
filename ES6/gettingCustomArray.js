
function removeFirstTwo(array) {
    const [a,b,...list] = array
    return list;
  }
  
  const source = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  const sourceWithoutFirstTwo = removeFirstTwo(source);


  //mainly we are the questtion says get romove first two number and give after the array