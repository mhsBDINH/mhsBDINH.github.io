function mobile() {
    var x = document.getElementById("id-nav-links");
    if (x.className === "nav-links") {
        x.className += " responsive";
    } else {
        x.className = "nav-links";
    }
}
