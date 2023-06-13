---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Communications.GetPresencesByUserId.GetPresencesByUserIdPostRequestBody
{
	Ids = new List<string>
	{
		"fa8bf3dc-eca7-46b7-bad1-db199b62afc3",
		"66825e03-7ef5-42da-9069-724602c31f6b",
	},
};
var result = await graphClient.Communications.GetPresencesByUserId.PostAsync(requestBody);


```