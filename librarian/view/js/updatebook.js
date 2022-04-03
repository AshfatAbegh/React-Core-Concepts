
    function isValid(){
      //var name=document.forms["mForm"]["name"].value;
     
      
      var bookname=document.forms["mForm"]["bookname"].value;
      
      var authorname=document.forms["mForm"]["authorname"].value;
       var publishdate=document.forms["mForm"]["publishdate"].value;
     


      /*function validateForm() {
  var fName = document.forms["myForm"]["fname"].value;
  var lName = document.forms["myForm"]["lname"].value;*/

 
      if((bookname==="")||(authorname==="")||(publishdate===""))
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

    
     