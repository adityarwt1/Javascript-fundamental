function Output() {

    let counter = 4;

    return function () {
        counter++
        return counter
    }
}

const increMent = Output()

console.log(increMent())
console.log(increMent())
console.log(increMent())/////  clousure bascially give the output withourt forgetting the inisial value
console.log(increMent())