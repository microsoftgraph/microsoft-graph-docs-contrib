---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryReviewTag = new Microsoft.Graph.Security.EdiscoveryReviewTag
{
	DisplayName = "My tag API",
	Description = "Use Graph API to create tags",
	ChildSelectability = Microsoft.Graph.Security.ChildSelectability.Many
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Tags
	.Request()
	.AddAsync(ediscoveryReviewTag);

```