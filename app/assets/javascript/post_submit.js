var submit = document.querySelector("#btn");

    submit.addEventListener('click', inputs);
    var input = document.querySelectorAll(".input");
    var form = document.getElementById('form');

    
    var regexTitle = /^[a-zA-Z\s]+$/;
    var regexDescription = /.{30,}/

    var alerts = ["Title must be Present", "Description must be Present"]

    var alert1 = ["Title only Contains Character A-z", "Description Length should be Greater than 30 Characters"]
    var regex = [ regexTitle, regexDescription]
    var altArr = [];
    function inputs() {

       

        for (i = 0; i <input.length; i++) {
            if (input[i].value != "" && !regex[i].test(input[i].value)) {
                // console.log(input[i].value);
                alert(alert1[i]);
                break;
            
            } 
            else if (input[i].value == "") {
                altArr.push(alerts[i]);

          }
        }
        alert(altArr);
        altArr.length = 0

        // alert(altArr);
        form.submit()
        console.log(submit.type);
               
    }