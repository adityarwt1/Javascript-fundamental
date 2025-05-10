const person = {
    name: "Aditya",
    greeet() {
        console.log(`my name is ${this.name}`)
    }

}

const boundGreet = person.greeet.bind({ name: "Raj" })

console.log(boundGreet)

///  bind call get output

