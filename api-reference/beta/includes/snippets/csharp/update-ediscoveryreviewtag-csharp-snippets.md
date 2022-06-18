---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryReviewTag = new Microsoft.Graph.Security.EdiscoveryReviewTag
{
	DisplayName = "My tag API 2",
	Description = "Use Graph API to create tags (updated)"
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Tags["{security.ediscoveryReviewTag-id}"]
	.Request()
	.UpdateAsync(ediscoveryReviewTag);

```