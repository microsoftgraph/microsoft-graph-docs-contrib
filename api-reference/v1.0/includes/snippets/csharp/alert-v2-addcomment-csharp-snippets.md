---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.Security.AlertComment
{
	OdataType = "microsoft.graph.security.alertComment",
	Comment = "Demo for docs",
};
var result = await graphClient.Security.Alerts_v2["{alert-id}"].Comments.PostAsync(requestBody);


```