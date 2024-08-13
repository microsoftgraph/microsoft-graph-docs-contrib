---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new SharePointRestoreSession
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"siteRestoreArtifacts@delta" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"restorePoint", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"@odata.id", new UntypedString("1b014d8c-71fe-4d00-a01a-31850bc5b32c")
							},
						})
					},
					{
						"destinationType", new UntypedString("new")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"restorePoint", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"@odata.id", new UntypedString("2b014d8c-71fe-4d00-a01a-31850bc5b32")
							},
						})
					},
					{
						"destinationType", new UntypedString("new")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"restorePoint", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"@odata.id", new UntypedString("3b014d8c-71fe-4d00-a01a-31850bc5b32c")
							},
						})
					},
					{
						"destinationType", new UntypedString("new")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"restorePoint", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"@odata.id", new UntypedString("4b014d8c-71fe-4d00-a01a-31850bc5b32c")
							},
						})
					},
					{
						"destinationType", new UntypedString("new")
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
						"id", new UntypedString("959ba739-70b5-43c4-8c90-b2c22014f18a")
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
						"id", new UntypedString("959ba739-70b5-43c4-8c90-b2c22014f18b")
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
						"id", new UntypedString("959ba739-70b5-43c4-8c90-b2c22014f18c")
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.SharePointRestoreSessions["{sharePointRestoreSession-id}"].PatchAsync(requestBody);


```