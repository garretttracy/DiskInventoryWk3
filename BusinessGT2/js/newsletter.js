"use strict";

window.onload = setForm;
window.addEventListener("load", function() {
    document.getElementById("subButton").onclick =  runSubmit;
    document.getElementById("fname").onclick = validatefName;
    document.getElementById("fname").oninput = validatefName;
    document.getElementById("lname").onclick = validatelName;
    document.getElementById("lname").oninput = validatelName;
    document.getElementById("eBox").onclick = validateEmail;
    document.getElementById("eBox").oninput = validateEmail;

 });

 function runSubmit () {
    validatefName();
    validatelName();
    validateEmail();
    setForm();
 }
 
 function validatefName() {
    var fName = document.getElementById("fname");
    if (fName.validity.valueMissing) {
        fName.setCustomValidity("Enter your first name, please!");
    } else {
        fName.setCustomValidity("");
    }
 }

 function validatelName() {
    var lName = document.getElementById("lname");
    if (lName.validity.valueMissing) {
        lName.setCustomValidity("Enter your last name, please!");
    } else {
        lName.setCustomValidity("");
    }
 }

 function validateEmail() {
    var rE = /(\w*\.\w*\@\w{2,}\.[a-zA-Z]*\.[a-zA-Z]{3})|(\w*\@\w*\.\w*\.\w*\.[a-zA-Z]{3})|(\w*\@\w{2,}\.[a-zA-Z]{3})/;
     var eMail = document.getElementById("eBox");
     if(eMail.validity.valueMissing) {
         eMail.setCustomValidity("Please enter your e-mail address!");
     } else if (rE.test(eMail.value) === false) {
         eMail.setCustomValidity("Please enter a VALID e-mail address!")
     } else {
        eMail.setCustomValidity("");
     }
 }



function setForm() {
   document.forms[0].onsubmit = function() {
      if (this.checkValidity()) alert("No invalid data detected. Will retain data for further testing.");
      return false;
   }
}