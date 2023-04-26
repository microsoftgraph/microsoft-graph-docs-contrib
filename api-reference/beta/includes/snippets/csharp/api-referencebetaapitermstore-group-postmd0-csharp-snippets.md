---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.TermStore.Group
{
	DisplayName = "myGroup",
};
var result = await graphClient.TermStore.Groups.PostAsync(requestBody);


```