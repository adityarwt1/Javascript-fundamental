const array = ["aditya", "aman", "shivendra"]

let ul = document.createElement("ul")
for (let i = 0; i < array.length; i++) {
    const list = document.createElement("li")// first we are creatting the list 
    list.textContent = array[i] /// this is the main i didnot not about the array how to print as well
    ul.appendChild(list)
}
document.body.appendChild(ul)