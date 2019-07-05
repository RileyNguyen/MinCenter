function backgr() {
  var x = document.getElementById("select").value;
  var html = document.getElementById("html_input");
  var css = document.getElementById("css_input");
  var js = document.getElementById("js_input");
  if (x == "white") {
    html.style.backgroundColor = x.toString();
    html.style.color = "black";
    css.style.backgroundColor = x.toString();
    css.style.color = "black";
    js.style.backgroundColor = x.toString();
    js.style.color = "black";
  } else {
    html.style.backgroundColor = x.toString();
    html.style.color = "white";
    css.style.backgroundColor = x.toString();
    css.style.color = "white";
    js.style.backgroundColor = x.toString();
    js.style.color = "white";
  }
}
var html_tabs = document.getElementById("html");
var css_tabs = document.getElementById("css");
var js_tabs = document.getElementById("js");
html_mo.addEventListener("click", function() {
  html_tabs.style.display = "block";
  document.getElementById("html_mo").classList.add("active");
  css_tabs.style.display = "none";
  document.getElementById("css_mo").classList.remove("active");
  js_tabs.style.display = "none";
  document.getElementById("js_mo").classList.remove("active");
});
css_mo.addEventListener("click", function() {
  css_tabs.style.display = "block";
  document.getElementById("css_mo").classList.add("active");
  html_tabs.style.display = "none";
  document.getElementById("html_mo").classList.remove("active");
  js_tabs.style.display = "none";
  document.getElementById("js_mo").classList.remove("active");
});
js_mo.addEventListener("click", function() {
  js_tabs.style.display = "block";
  document.getElementById("js_mo").classList.add("active");
  html_tabs.style.display = "none";
  document.getElementById("html_mo").classList.remove("active");
  css_tabs.style.display = "none";
  document.getElementById("css_mo").classList.remove("active");
});
// function avatar(){
//     document.getElementById('menu-avatar').style.display = 'block';
// }
var result = document.getElementById("result");
var html_input = document.getElementById("html_input");
var css_input = document.getElementById("css_input");
var js_input = document.getElementById("js_input");
run_button.addEventListener("click", function() {
  var x = css_input.value;
  var css;
  for (var i = 0; i < x.length; i++) {
    css = "#result " + x;
  }
  result.innerHTML =
    html_input.value +
    "<style>" +
    css +
    "</style>" +
    "<script>" +
    js_input.value +
    "</script>";
});
reset_button.addEventListener("click", function() {
  html_input.value = "";
  css_input.value = "";
  js_input.value = "";
  result.innerHTML = "";
});
