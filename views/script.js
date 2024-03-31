document.addEventListener("DOMContentLoaded", function() {
    var accordions = document.getElementsByClassName("accordion");
    for (var i = 0; i < accordions.length; i++) {
        accordions[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var panel = this.nextElementSibling;
            if (panel.style.maxHeight) {
                panel.style.maxHeight = null;
            } else {
                panel.style.maxHeight = panel.scrollHeight + "px";
            } 
        });
    }

    // Automatically expand the first accordion
    if (accordions.length > 0) {
        accordions[0].classList.add("active");
        var firstPanel = accordions[0].nextElementSibling;
        firstPanel.style.maxHeight = firstPanel.scrollHeight + "px";
    }
});
