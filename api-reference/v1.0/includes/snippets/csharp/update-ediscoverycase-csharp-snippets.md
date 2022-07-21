---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryCase = new Microsoft.Graph.Security.EdiscoveryCase
{
	DisplayName = "My Case 1 - Renamed",
	Description = "Updated description"
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"]
	.Request()
	.UpdateAsync(ediscoveryCase);

```