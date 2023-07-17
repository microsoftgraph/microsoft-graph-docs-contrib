---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.Security.EdiscoveryReviewSet
{
	DisplayName = "My review set 2",
};
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].ReviewSets.PostAsync(requestBody);


```