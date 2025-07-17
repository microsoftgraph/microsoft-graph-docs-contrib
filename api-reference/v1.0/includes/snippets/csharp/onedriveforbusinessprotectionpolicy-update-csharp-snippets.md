---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new OneDriveForBusinessProtectionPolicy
{
	DisplayName = "One Drive  Policy - Inadvertent data loss",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"driveProtectionUnits@delta" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"directoryObjectId", new UntypedString("1b014d8c-71fe-4d00-a01a-31850bc5b32c")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"directoryObjectId", new UntypedString("2b014d8c-71fe-4d00-a01a-31850bc5b32c")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"@removed", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"reason", new UntypedString("changed")
							},
						})
					},
					{
						"id", new UntypedString("4267e382-71a9-4c07-bef7-bda97e09c0d2")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"@removed", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"reason", new UntypedString("changed")
							},
						})
					},
					{
						"id", new UntypedString("3667e382-71a9-4c07-bef7-bda97e09c0d2")
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.OneDriveForBusinessProtectionPolicies["{oneDriveForBusinessProtectionPolicy-id}"].PatchAsync(requestBody);


```