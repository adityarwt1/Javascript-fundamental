class Person {
    constructor(name, age) {
        if (!new.target) {
            return "new keyword must be use when use the class"
        }

        this.name = name /// basically this create the object in name aur keyvalue
        this.age = age
    }
}

function addPerson() {

    const name = document.getElementById("name").value;
    const age = document.getElementById("age").value;
    

    if (!name || !age) {
        alert("name or age must be provided ")
    }

    const person1 = new Person(name, age)

    const nameDiv = document.createElement("div")
    const namedDiv = nameDiv.textContent = person1.name
    



}