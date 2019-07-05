function time_count(){
	var timer = document.getElementById('time').value;
	return localStorage.setItem('mins',timer);
}
var timer = document.getElementById('time').value;
console.log(localStorage.setItem('mins',timer));

