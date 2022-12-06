---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sites = await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"].Sites
	.Request()
	.GetAsync();

```