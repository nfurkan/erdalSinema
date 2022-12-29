/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function myFunction() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}

document.getElementById("suggestButton").addEventListener(
  "click",
  () => {
    //document.getElementById("welcome").hidden = true;
    document.getElementById("movieSuggestSection").hidden = true;
  },
  false
);

function allLetter(inputtxt)
    {
     
     var letters = /^[A-Za-z]+$/;
     if(inputtxt.value.match(letters))
       {
        return true;
       }
     else
       {
       alert("İsminizde özel karakterler olmamalı.");
       return false;
       }
    }
    
    function checktellenght(inputtxt)
    {   
        var numbers = /^[0-9]+$/;
        if(inputtxt.value.match(numbers))
        {
           return true;
        }
        else
       {
           alert("Telefon numarasına sadece rakam girilebilir.");
           return false;
       }
    }