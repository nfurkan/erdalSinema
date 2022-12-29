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
    
    function Blank(name,password,telno,email,type) {

        var name = document.forms["registerform"]["name"].value;
        var password = document.forms["registerform"]["password"].value;
        var telno = document.forms["registerform"]["telno"].value;
        var email = document.forms["registerform"]["email"].value;
        var type = document.forms["registerform"]["type"].value;
        if (name === null || name ===""|| password ===null || password === ""|| telno === null || telno === ""|| email === null || email === "" || type === null || type === "") {
            alert("Boş alanları doldurunuz.");
            return false;
            }
        else
        {
            document.getElementById("signin").style.visibility = "visible";
            return true;
        }
            
    }
    
    function alldetailscheck(name,password,telno,email,type)
    {
    let letter = allLetter(name);
    let length = checktellenght(telno);
    let everything;
    if(letter === true && length === true)
    {
        everything = Blank(name,password,telno,email,type);
        if(everything)
        return true;
    }
    else{
        alert("Boş alanları doldurunuz.");
        document.getElementById("signin").style.visibility = "hidden";
        return false;
        }
    }

    function ShowIt(){
        var obj = document.getElementById("section-hidden");
        var obj2 = document.getElementById("randomp");
        if(obj.style.visibility === "hidden" && obj2.style.visibility === "hidden")
        {
            obj.style.visibility = "visible";
            obj2.style.visibility = "visible";
        }
        else
        {
            obj.style.visibility = "hidden";
            obj2.style.visibility = "hidden";
        }
    }