---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.Security.EdiscoveryCase
{
	DisplayName = "My Case 1 - Renamed",
	Description = "Updated description",
};
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].PatchAsync(requestBody);


```