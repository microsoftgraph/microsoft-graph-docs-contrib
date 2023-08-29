---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Group
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"members@odata.bind" , new List<string>
			{
				"https://graph.microsoft.com/v1.0/directoryObjects/{id}",
				"https://graph.microsoft.com/v1.0/directoryObjects/{id}",
				"https://graph.microsoft.com/v1.0/directoryObjects/{id}",
			}
		},
	},
};
var result = await graphClient.Groups["{group-id}"].PatchAsync(requestBody);


```