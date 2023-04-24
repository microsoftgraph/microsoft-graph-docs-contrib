---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Admin.Edge.InternetExplorerMode.SiteLists.Item.Publish.PublishPostRequestBody
{
	Revision = "1.0",
};
var result = await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"].Publish.PostAsync(requestBody);


```