---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.Security.EdiscoveryReviewTag
{
	DisplayName = "My tag API 2",
	Description = "Use Graph API to create tags (updated)",
};
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Tags["{ediscoveryReviewTag-id}"].PatchAsync(requestBody);


```