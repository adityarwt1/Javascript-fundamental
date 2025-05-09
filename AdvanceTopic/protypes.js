const Under70KLaptopPart = {
    cpu: "16",
    gpu: "rtx 3050 ",
    ram: "16gb ram"
}

// modern way to asign the object prototype into the server
const laptop = {
    title: "Asus Tuf A15"
}

Object.setPrototypeOf(laptop, Under70KLaptopPart)


// console.log(LaptopPart.__proto__) // this __ dunder

//node protypes.js
// [Object: null prototype] {}

console.log(laptop.gpu)



/// traditional way to asinging the value of anothr object into this


const under60KLaptopPart = {
    gpu: "rtx 3050 ",
    cpu: "Amd ryzen 7000"
}

const NewLaptop = {
    title: "Asus tuf a 15",
    __proto__: under60KLaptopPart
}

// Object.setPrototypeOf(NewLaptop, under60KLaptopPart)
console.log(NewLaptop.gpu)


// setPrototypeof example use in tha javascript

// const Under70kLaptopParts = {
//     cpu: "Amd ryzen 700",
//     gpu: "RTX 3050",
//     ram: "16 GB"
// }

// const UpcommingLaptop = {
//     title: "Asus Tuf A15"
// }

// Object.setPrototypeOf(UpcommingLaptop, Under70kLaptopParts)

// console.log(UpcommingLaptop.gpu)

/// another way to asign the prototype using dunder

const Under70kLaptopParts = {
    cpu: "Amd ryzen 700",
    gpu: "RTX 3050",
    ram: "16 GB"
}

const UpcommingLaptop = {
    title: "Asus Tuf A15",
    __proto__: Under70kLaptopParts /// (__proto__) this called dunder  
}


console.log(UpcommingLaptop.gpu)
