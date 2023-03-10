---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TiIndicator
{
	Description = "description-updated",
};
var result = await graphClient.Security.TiIndicators["{tiIndicator-id}"].PatchAsync(requestBody);


```