---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.Case
{
	DisplayName = "My Case 1 - Renamed",
	Description = "Updated description",
	ExternalId = "Updated externalId",
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].PatchAsync(requestBody);


```