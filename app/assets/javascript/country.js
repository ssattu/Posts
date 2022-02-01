var country = document.getElementById("user_country");
  var state = document.getElementById("user_state");
  // var city = document.getElementById("city");
  console.log(1)
  country.addEventListener("change", function(){
    $.ajax({
      url: "/states?country=" + country.value,
      type: "GET"
    })
  })
  state.addEventListener("change", function(){
    $.ajax({
      url: "/cities?country=" + country.value + "&state=" + state.value,
      type: "GET"
    })
  })