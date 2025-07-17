---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new DriveItem
{
	Name = "New Item",
	Extensions = new List<Extension>
	{
		new Extension
		{
			AdditionalData = new Dictionary<string, object>
			{
				{
					"extensionName" , "myCustomExtension"
				},
				{
					"myCustomString" , "Contoso data"
				},
				{
					"myCustomBool" , false
				},
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@microsoft.graph.conflictBehavior" , "rename"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Children.PostAsync(requestBody);


```