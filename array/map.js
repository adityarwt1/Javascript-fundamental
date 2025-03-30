const array = ["aditya", "aman", "shivendra"] 

let ul = document.createElement("ul")
 for(let i =0; i< array.length ; i++){
  const list =   document.createElement("li")
  list.textContent = array[i]
  ul.appendChild(list)
}
document.body.appendChild(ul)