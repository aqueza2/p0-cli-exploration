// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: Ryan Zell].


// Add your JavaScript calls to this page:

// Release 1:
var release0 = document.getElementById("release-0");
id = "release-0"
var att = document.createAttribute("class");
att.value = "done";
release0.setAttributeNode(att)


// Release 2:
var release1 = document.getElementById( 'release-1' );
release1.parentNode.removeChild( release1 );


// Release 3:

var string = document.getElementsByTagName("h1")[0].innerHTML;
var replacedString = string.replace("Change this text to finish release 2", "I completed release 2");
document.getElementsByTagName("h1")[0].innerHTML = replacedString;


// Release 4:

var element = document.getElementById('release-3');
element.style.background = '#955251';


// Release 5:
var release4s = document.getElementsByClassName("release-4");

for (var i = 0; i < release4s.length; i++) {
  var release4 = release4s[i];
  release4.style.fontSize = "2em";
}


//Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

