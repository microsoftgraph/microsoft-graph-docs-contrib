---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BrowserSiteList
{
	DisplayName = "Production Site List A",
	Description = "Production site list for team A",
};
var result = await graphClient.Admin.Edge.InternetExplorerMode.SiteLists.PostAsync(requestBody);


```