
    function isValid(){
      //var name=document.forms["mForm"]["name"].value;
     
      
      var bookname=document.forms["mForm"]["bookname"].value;
      
      //var password=document.forms["mForm"]["password"].value;
     


      /*function validateForm() {
  var fName = document.forms["myForm"]["fname"].value;
  var lName = document.forms["myForm"]["lname"].value;*/

 
      if(bookname==="")
      {
        /*document.getElementById("nameErr").innerHTML="Field Empty";
        document.getElementById("usernameErr").innerHTML="Field Empty";
        document.getElementById("genderErr").innerHTML="Field Empty";
        document.getElementById("emailErr").innerHTML="Field Empty";
        document.getElementById("passwordErr").innerHTML="Field Empty";
        document.getElementById("cpassErr").innerHTML="Field Empty";
        return false;*/

         alert("Field required");
    return false;
      }
      
    }

    
     