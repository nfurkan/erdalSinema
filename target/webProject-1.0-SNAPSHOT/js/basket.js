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
