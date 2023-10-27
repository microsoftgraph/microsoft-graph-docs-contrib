---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Extension
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"theme" , "light"
		},
		{
			"color" , "yellow"
		},
		{
			"lang" , "Swahili"
		},
	},
};
var result = await graphClient.Me.Extensions["{extension-id}"].PatchAsync(requestBody);


```