---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var browserSharedCookie = new BrowserSharedCookie
{
	HostOrDomain = "www.microsoft.com",
	SourceEnvironment = BrowserSharedCookieSourceEnvironment.InternetExplorer11,
	DisplayName = "Microsoft Cookie",
	HostOnly = true,
	Comment = "A cookie for microsoft.com",
	Path = "/"
};

await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"].SharedCookies
	.Request()
	.AddAsync(browserSharedCookie);

```