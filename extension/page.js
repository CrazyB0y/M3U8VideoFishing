window.addEventListener("load", function() {
	//lang load
    document.getElementById("pageTitle").innerHTML = chrome.i18n.getMessage("pageTitle");
	document.getElementById("pageOpenVLC").innerHTML = chrome.i18n.getMessage("pageOpenVLC");
	document.getElementById("linkURL").innerHTML = chrome.i18n.getMessage("linkURL");
	//set links on page from get param
	var urlForVideo = window.location.search.substr(1);
	document.getElementById('inputURL').value = urlForVideo;
	document.getElementById('buttonURL').href = "vlc://" + urlForVideo;		
	document.getElementById('linkURL').href = urlForVideo;	
});

document.getElementById("copyURL").onclick = function(element){
	//copy url to clipboard
	navigator.clipboard.writeText(window.location.search.substr(1));
	document.getElementById("copyURL").style.backgroundColor = "#00ff00";
}