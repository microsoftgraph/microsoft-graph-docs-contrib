---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

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