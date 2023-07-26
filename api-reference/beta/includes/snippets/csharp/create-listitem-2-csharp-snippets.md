---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new FieldValueSet
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"Color" , "Fuchsia"
		},
		{
			"Quantity" , 934
		},
	},
};
var result = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{listItem-id}"].Fields.PatchAsync(requestBody);


```