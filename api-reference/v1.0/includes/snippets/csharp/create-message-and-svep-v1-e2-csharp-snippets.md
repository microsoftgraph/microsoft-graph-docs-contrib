---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Message
{
	SingleValueExtendedProperties = new List<SingleValueLegacyExtendedProperty>
	{
		new SingleValueLegacyExtendedProperty
		{
			Id = "String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color",
			Value = "Green",
		},
	},
};
var result = await graphClient.Me.Messages["{message-id}"].PatchAsync(requestBody);


```