---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new Device
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"extensionAttributes" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"extensionAttribute1", new UntypedString("BYOD-Device")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Devices["{device-id}"].PatchAsync(requestBody);


```