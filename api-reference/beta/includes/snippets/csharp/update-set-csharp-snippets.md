---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.TermStore.Set
{
	Description = "mySet",
};
var result = await graphClient.TermStore.Sets["{set-id}"].PatchAsync(requestBody);


```