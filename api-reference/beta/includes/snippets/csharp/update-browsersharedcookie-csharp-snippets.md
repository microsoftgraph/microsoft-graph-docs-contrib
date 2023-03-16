---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BrowserSharedCookie
{
	HostOrDomain = "www.microsoft.com",
	SourceEnvironment = BrowserSharedCookieSourceEnvironment.MicrosoftEdge,
	DisplayName = "Microsoft Cookie",
	Path = "/",
	HostOnly = true,
	Comment = "Updating source environment.",
};
var result = await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"].SharedCookies["{browserSharedCookie-id}"].PatchAsync(requestBody);


```