let usernameCkeckTimeout
function validateForm(){
    const username = $("input[name=username]").val()
    const password = $("input[name=password]").val()
    const passwordConfirm = $("input[name=passwordConfirm]").val()

    if(username.length == 0){
        $("#errors").html("Username must not be empty!");
        $("#errors").css("display", "block");
        return false;
    }

    if(password.length == 0){
        $("#errors").html("Password must not be empty!");
        $("#errors").css("display", "block");
        return false;
    }

    if(password != passwordConfirm){
        $("#errors").html("Passwords do not match!");
        $("#errors").css("display", "block");
        return false;
    }

    $("form[name=registerForm]").submit();
}

function validateUsername(){
    clearTimeout(usernameCkeckTimeout);
    usernameCkeckTimeout = setTimeout(checkUsernameInDB,2000);
}

function checkUsernameInDB(){
    const username = $("input[name=username]").val()
    const contextPath = $("input[name=contextPath]").val().substring(1);
    const validateUserPath = "json/register?action=validate-username&username=" + username
    console.log(validateUserPath)
   /* $.ajax({
        url: validateUserPath,
        success: function(result){
            //$("#div1").html(result);
            alert(result);
        }
    });*/

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respData = JSON.parse(this.response)
            if(respData.exists == "true"){
                $("#errors").html("User already exists");
                $("#errors").css("display", "block");
            }else{
                $("#errors").html("");
                $("#errors").css("display", "none");
            }
        }
    };
    xhttp.open("GET", validateUserPath, true);
    xhttp.send();
}