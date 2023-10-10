---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.CategoryTemplate
{
	OdataType = "#microsoft.graph.security.categoryTemplate",
	DisplayName = "String",
	CreatedBy = new IdentitySet
	{
		OdataType = "microsoft.graph.identitySet",
	},
};
var result = await graphClient.Security.Labels.Categories.PostAsync(requestBody);


```