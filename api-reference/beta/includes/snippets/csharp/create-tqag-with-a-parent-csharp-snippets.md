---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.EdiscoveryReviewTag
{
	DisplayName = "My tag API",
	Description = "Use Graph API to create tags",
	ChildSelectability = Microsoft.Graph.Beta.Models.Security.ChildSelectability.Many,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"parent@odata.bind" , ""
		},
	},
};
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Tags.PostAsync(requestBody);


```