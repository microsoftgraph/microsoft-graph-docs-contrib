---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryHoldPolicy = new Microsoft.Graph.Security.EdiscoveryHoldPolicy
{
	Description = "updated description",
	ContentQuery = "bazooka bazooka"
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].LegalHolds["{security.ediscoveryHoldPolicy-id}"]
	.Request()
	.UpdateAsync(ediscoveryHoldPolicy);

```