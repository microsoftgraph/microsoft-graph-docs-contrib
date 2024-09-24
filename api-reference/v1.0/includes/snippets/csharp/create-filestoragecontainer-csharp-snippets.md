---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new FileStorageContainer
{
	DisplayName = "My Application Storage Container",
	Description = "Description of My Application Storage Container",
	ContainerTypeId = Guid.Parse("91710488-5756-407f-9046-fbe5f0b4de73"),
	AdditionalData = new Dictionary<string, object>
	{
		{
			"settings" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"isOcrEnabled", new UntypedBoolean(true)
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Storage.FileStorage.Containers.PostAsync(requestBody);


```