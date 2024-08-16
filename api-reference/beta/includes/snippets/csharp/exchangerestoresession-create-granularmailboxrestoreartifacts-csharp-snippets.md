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
	OdataType = "#microsoft.graph.exchangeRestoreSession",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"granularMailboxRestoreArtifacts" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"restorePoint", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"@odata.id", new UntypedString("1f1fccc3-a642-4f61-bf49-f37b9a888279")
							},
						})
					},
					{
						"destinationType", new UntypedString("inPlace")
					},
					{
						"searchResponseId", new UntypedString("M2UyZDAwMDAwMDMxMzkzYTMyNj")
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.ExchangeRestoreSessions.PostAsync(requestBody);


```