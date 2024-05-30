---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"].SharedCookies.PostAsync(requestBody);


```