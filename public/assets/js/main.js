function sizeOfThings() {
	var windowHeight = window.innerHeight;
	var screenHeight = screen.height;

	console.log(windowHeight+' / '+screenHeight);

	document.getElementById('autenticacao').style.height = windowHeight + 'px';
	document.getElementById('area-identificacao').style.height = windowHeight + 'px';

};
sizeOfThings();

window.addEventListener('resize', function() {
	sizeOfThings();
});
