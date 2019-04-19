function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
    var id = this.id;
    switch (id) {
        case "Perstoggle": {
            var pers = document.getElementsByClassName("person");
            for (var i = 0; i < pers.length; i++) {
                pers[i].classList.toggle("on")
            }
        };
        break;
        case "Allutoggle": {
            var Allu = document.getElementsByClassName("allusion");
            for (var i = 0; i < Allu.length; i++) {
                Allu[i].classList.toggle("on")
            }
        };
        break;
        case "Reftoggle": {
            var ref = document.getElementsByClassName("reference");
            for (var i = 0; i < ref.length; i++) {
                ref[i].classList.toggle("on")
            }
    };
     break;
        case "Saidtoggle": {
            var said = document.getElementsByClassName("said");
            for (var i = 0; i < said.length; i++) {
                said[i].classList.toggle("on")
            }
    };
    }
    }
window.onload = init;