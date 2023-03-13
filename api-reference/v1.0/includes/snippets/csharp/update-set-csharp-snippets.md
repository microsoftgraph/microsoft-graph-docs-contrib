---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.TermStore.Set
{
	Description = "mySet",
};
var result = await graphClient.Sites["{site-id}"].TermStore.Sets["{set-id}"].PatchAsync(requestBody);


```