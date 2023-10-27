---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BrowserSiteList
{
	DisplayName = "Production Site List A",
	Description = "Production site list for team A",
};
var result = await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"].PatchAsync(requestBody);


```