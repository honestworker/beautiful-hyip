var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
var htmlDivCss=".tp-caption.Title,.Title{color:rgba(255,255,255,1.00);font-size:103px;line-height:103px;font-weight:900;font-style:normal;font-family:Roboto;padding:0px 0px 0px 0px;text-decoration:none;text-align:left;background-color:transparent;border-color:transparent;border-style:none;border-width:0px;border-radius:0px 0px 0px 0px}.tp-caption.Button-Style,.Button-Style{color:rgba(255,255,255,1.00);font-size:11px;line-height:17px;font-weight:900;font-style:normal;font-family:roboto;padding:0px 0px 0px 0px;text-decoration:none;text-align:left;background-color:transparent;border-color:transparent;border-style:none;border-width:0px;border-radius:0px 0px 0px 0px}.tp-caption.Small-Subtitle,.Small-Subtitle{color:rgba(255,255,255,1.00);font-size:16px;line-height:26px;font-weight:900;font-style:normal;font-family:Roboto;padding:0px 0px 0px 0px;text-decoration:none;text-align:left;background-color:transparent;border-color:transparent;border-style:none;border-width:0px;border-radius:0px 0px 0px 0px}";
if(htmlDiv) {
	htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
}else{
	var htmlDiv = document.createElement("div");
	htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
	document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
}