var draft = document.querySelector("#draft")
var title = document.getElementById('post_title')
var description = document.getElementById("post_description")
// var input = document.querySelectorAll(".input")
// var form = document.getElementById('form');
console.log(1);

    draft.addEventListener('click', function(){
        $.ajax({
            url: '/draft',
            type: 'POST',
            data : { post: {title: "title.value", description: "description.value"}}
        })

    });
    // function inputs() {
    //     for (i = 0; i <input.length; i++) {
    //         if (input[i].value != "" ) {
    //             console.log(input[i].value);
    //             form.submit()
    //         } 
    //         else if (input[i].value == "") {
    //           event.preventDefault();  
    //       }
    //     }
      
    //     console.log(submit.type);
    // }
    //            