//// va


const accountId = "12345987"
let accountEmail = "adityarawatnew2487@gmail.com"
var accountPassword = "aditya"

console.assert(accountId)

console.table([accountId,accountEmail,accountPassword])



//// {} this called scop[e ]  in the javascript

let functionScpope = "function Scope";
let condition = true;
if (2+2 === 4) {
    functionScpope = "bloced scope"
    console.log(functionScpope)
}

console.log(functionScpope)