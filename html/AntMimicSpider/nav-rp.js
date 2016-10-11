function mobile() {
    var x = document.getElementById("id-nav-links");
    var y = document.getElementById("mobile");
    if (x.className === "nav-links") {
        x.className += " responsive";
    } else {
        x.className = "nav-links";
    }
    if (y.className === "nav-dot") {
        y.className += " on";
    } else {
        y.className = "nav-dot";
    }
}
