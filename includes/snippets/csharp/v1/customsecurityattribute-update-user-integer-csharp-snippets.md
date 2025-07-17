---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new User
{
	CustomSecurityAttributes = new CustomSecurityAttributeValue
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"Engineering" , new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"@odata.type", new UntypedString("#Microsoft.DirectoryServices.CustomSecurityAttributeValue")
					},
					{
						"numVendors@odata.type", new UntypedString("#Int32")
					},
					{
						"numVendors", new UntypedString("8")
					},
				})
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].PatchAsync(requestBody);


```