function Person(name, age) {
    this.name = name,
        this.age = age
    /// 
}

const person1 = new Person("aditya", 17);
console.log(person1)
class Person {
    constructor(name, age) {
        this.name = name;
        this.age = age;
    }
}

const person2 = new Person("aditya", 17);
console.log(person2);


class Module {
    constructor(name, price) {
        this.name = name,
            this.price = price
    }
}

const car1 = new Module("Honda", 70000)
/// Person { name: 'aditya', age: 17 }
/// mai thing i learned fromm this is not funtionn after using the this getter he becomes the class

class Animal {
    constructor(animal) {
        this.animal = animal
    }

    sound() {
        this.sound = () => {
            return "sound of the animal who mmade"
        }
    }

}

Animal.prototype.sound = () => {
    return `${this.sound} made the sound`
} /// concept i learned this is mmost unique way to crreate the another