---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Application
{
	DisplayName = "New display name",
};
var result = await graphClient.Applications["{application-id}"].PatchAsync(requestBody);


```