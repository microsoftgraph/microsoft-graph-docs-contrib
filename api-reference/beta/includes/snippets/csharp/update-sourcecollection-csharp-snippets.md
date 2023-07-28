---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.SourceCollection
{
	DisplayName = "Quarterly Financials search",
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].SourceCollections["{sourceCollection-id}"].PatchAsync(requestBody);


```