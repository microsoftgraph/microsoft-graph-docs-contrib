---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new ExchangeRestoreSession
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"mailboxRestoreArtifacts@delta" , new List<object>
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
						"destinationType", new UntypedString("inPlace")
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
						"destinationType", new UntypedString("inPlace")
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
						"destinationType", new UntypedString("inPlace")
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
						"destinationType", new UntypedString("inPlace")
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
						"id", new UntypedString("99954f18-c8ec-4b62-85bf-cdf3b70b140e")
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
var result = await graphClient.Solutions.BackupRestore.ExchangeRestoreSessions["{exchangeRestoreSession-id}"].PatchAsync(requestBody);


```