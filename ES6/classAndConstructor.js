// Only change code below this line
class Vegetable{
    constructor(name){
      this.name = name
    }
    lounch(){
        console.log(this.name)
    }
  }
  // Only change code above this line
  
  const carrot = new Vegetable('carrot');
  console.log(carrot.lounch);
  
  console.log(carrot.name); // Should display 'carrot'

  //// we can make class to and asigned the value by usiingg constructor
  /// in feature we can also make anotheer command to of vegetable like llouch who can console the value