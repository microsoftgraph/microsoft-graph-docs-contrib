---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BrowserSharedCookie
{
	OdataType = "#microsoft.graph.browserSharedCookie",
	HostOrDomain = "www.microsoft.com",
	SourceEnvironment = BrowserSharedCookieSourceEnvironment.InternetExplorer11,
	DisplayName = "Microsoft Cookie",
	HostOnly = true,
	Comment = "A cookie for microsoft.com",
	Path = "/",
};
var result = await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"].SharedCookies.PostAsync(requestBody);


```