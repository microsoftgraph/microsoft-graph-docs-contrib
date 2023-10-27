---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.LegalHold
{
	Description = "This is a description for a legalHold",
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].LegalHolds["{legalHold-id}"].PatchAsync(requestBody);


```