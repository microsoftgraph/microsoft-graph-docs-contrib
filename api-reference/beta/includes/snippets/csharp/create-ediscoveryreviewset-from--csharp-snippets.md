---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryReviewSet = new Microsoft.Graph.Security.EdiscoveryReviewSet
{
	DisplayName = "My review set 2"
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].ReviewSets
	.Request()
	.AddAsync(ediscoveryReviewSet);

```