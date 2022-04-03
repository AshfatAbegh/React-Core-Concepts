
    function isValid(){
      //var name=document.forms["mForm"]["name"].value;
     
      var name=document.forms["mForm"]["name"].value;
      var username=document.forms["mForm"]["username"].value;
      var email=document.forms["mForm"]["email"].value;
      var password=document.forms["mForm"]["password"].value;
      var cpass=document.forms["mForm"]["cpass"].value;
      


      /*function validateForm() {
  var fName = document.forms["myForm"]["fname"].value;
  var lName = document.forms["myForm"]["lname"].value;*/

 
      if((name==="")||(username==="")||(email==="")||(password==="")||(cpass===""))
      {
        /*document.getElementById("nameErr").innerHTML="Field Empty";
        document.getElementById("usernameErr").innerHTML="Field Empty";
        document.getElementById("genderErr").innerHTML="Field Empty";
        document.getElementById("emailErr").innerHTML="Field Empty";
        document.getElementById("passwordErr").innerHTML="Field Empty";
        document.getElementById("cpassErr").innerHTML="Field Empty";
        return false;*/

         alert("All field are required");
    return false;
      }
      
    }

    
     
 