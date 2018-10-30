const setupdiv = document.getElementById("setup")
const number_input = document.getElementById("input_number")

let queue = [];
let showing_color = true;

Array.prototype.shuffle = function() {
    var input = this;

    for (var i = input.length-1; i >=0; i--) {

        var randomIndex = Math.floor(Math.random()*(i+1));
        var itemAtIndex = input[randomIndex];

        input[randomIndex] = input[i];
        input[i] = itemAtIndex;
    }
    return input;
}

function start() {
    let n = number_input.value;
    queue = Array(Math.floor(n/2)).fill(0).concat(Array(Math.ceil(n/2)).fill(1));
    queue = queue.shuffle();
    console.debug(queue);

    if (n > 0) {
        //nextdiv.classList.remove("hidden");
        setupdiv.classList.add("hidden");
    }
}

document.body.addEventListener("click", () => {
    if (!queue.length) {
        document.body.className = "";
        return setupdiv.classList.remove("hidden");
    }

    showing_color = !showing_color;
    if (showing_color) {
        let team = queue.pop();
        document.body.classList.add("team-"+team);
    } else {
        document.body.className = "";
    }
});
