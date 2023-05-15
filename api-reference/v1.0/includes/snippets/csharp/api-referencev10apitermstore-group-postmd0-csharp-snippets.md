---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.TermStore.Group
{
	DisplayName = "myGroup",
};
var result = await graphClient.Sites["{site-id}"].TermStore.Groups.PostAsync(requestBody);


```