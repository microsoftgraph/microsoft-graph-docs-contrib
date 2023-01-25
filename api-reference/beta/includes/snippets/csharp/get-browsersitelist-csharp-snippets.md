---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var browserSiteList = await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"]
	.Request()
	.GetAsync();

```