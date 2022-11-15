---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var siteLists = await graphClient.Admin.Edge.InternetExplorerMode.SiteLists
	.Request()
	.GetAsync();

```