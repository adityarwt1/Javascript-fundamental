const car = {
    name: "toyora supra",
    fluel: "kadua tel",
    year: 2007,
    start: () => {
        return `${this.name} this car made in ${this.year}`
    }
}

console.log(car.start())