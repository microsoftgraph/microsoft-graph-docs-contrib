---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sharedCookies = await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"].SharedCookies
	.Request()
	.GetAsync();

```