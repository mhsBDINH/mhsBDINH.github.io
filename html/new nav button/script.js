function mobile() {
    var x = document.getElementsByClassName("middle");
    if (x.className === "middle") {
        x.className += "on";
    } else {
        x.className = "middle";
    }
}
