---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var browserSiteList = new BrowserSiteList
{
	DisplayName = "Production Site List A",
	Description = "Production site list for team A"
};

await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"]
	.Request()
	.UpdateAsync(browserSiteList);

```