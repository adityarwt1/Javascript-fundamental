function myLocalScope() {
    // Only change code below this line
  const myVar = 56;
    console.log('inside myLocalScope', myVar);
  }
  myLocalScope();
  
  // Run and check the console
  // myVar is not defined outside of myLocalScope
  console.log('outside myLocalScope', myVar);


  /// local scope only work when function should run one time and among in the future