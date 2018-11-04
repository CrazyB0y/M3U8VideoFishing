chrome.webRequest.onCompleted.addListener(
	function(details) {	
		var url = details.url;
		console.info("webRequest.onCompleted: " + url); 
		if(url.indexOf("index.m3u8") !== -1) 
		{
			if(url.indexOf("hls") !== -1) 
			{
				//Refresh tab for cancel video playing
				chrome.tabs.reload(details.tabId, null, function(){});
				//Open information window with URL
				chrome.windows.create({url: "page.html?" + url, type: "popup", width: 400, height: 300});
			}
		}
	}, 
{ urls: [ "http://*/*" ], types: ["media", "xmlhttprequest" ] }, ["responseHeaders"]);