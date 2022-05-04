let someString = "some string"

function updateString() {
  for (let i = 0; i <= 10000; i++) {
    someString = "update string"
  }
}

const t1 = performance.now()
updateString()
const t2 = performance.now()

console.log("It took " + (t2 - t1) + " milliseconds");

const newDiv = document.createElement("div")
const newText = document.createTextNode("some text")

newDiv.appendChild(newText)
document.body.appendChild(newDiv)

function updateDom() {
  for (let i = 0; i <= 10000; i++) {
    newDiv.innerHTML = "updated text"
  }
}

const t3 = performance.now()
updateDom()
const t4 = performance.now()

console.log("It took " + (t4 - t3) + " milliseconds to update a DOM");
