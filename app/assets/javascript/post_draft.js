var draft = document.querySelector("#draft")
var title = document.getElementById("post_title")
var description = document.getElementById("post_description")
// var input = document.querySelectorAll(".input")
// var form = document.getElementById('form');

    draft.addEventListener('click', function(){

    var input = document.querySelectorAll(".input");
    var form = document.getElementById('form');
    var regexTitle = /^[a-zA-Z\s]+$/;
    var alerts = ["Title must be Present"]
    var alert1 = ["Title only Contains Character A-z"]
    var regex = [ regexTitle]
    function inputs() {
        for (i = 0; i <1; i++) {
            if (input[i].value != "" && !regex[i].test(input[i].value)) {
                // console.log(input[i].value);
                alert(alert1[i]);
                break;
            } 
            else if (input[i].value == "") {
                alert(alerts[i]);
          }
        }               
    }
     // flash('Post saved as draft');
        $.ajax({
            url: "/draft",
            type: "POST",
            data : { post: {title: title.value, description: description.value}}
        })

    });
               