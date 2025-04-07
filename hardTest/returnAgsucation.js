function orderMyLogic(val) {
    if (val < 10) {
      return "Less than 10";
    } else if (val < 5) {
      return "Less than 5";
    } else {
      return "Greater than or equal to 10";
    }
  }
  
  orderMyLogic(7);
  orderMyLogic(4);
  orderMyLogic(6);
  orderMyLogic(11);


  /// what i learn from this test 
  /// i learn the excution of the function return the first statement was true so that we need to declare flow of agsicution into the smaller to bigger