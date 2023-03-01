---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.Tag
{
	Description = "This is an updated description.",
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].Tags["{tag-id}"].PatchAsync(requestBody);


```