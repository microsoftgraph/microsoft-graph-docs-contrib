---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.ApplicationTemplates.Item.Instantiate.InstantiatePostRequestBody
{
	DisplayName = "testProperties",
};
var result = await graphClient.ApplicationTemplates["{applicationTemplate-id}"].Instantiate.PostAsync(requestBody);


```