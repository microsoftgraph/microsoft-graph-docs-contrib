---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ExchangeRestoreSession
{
	OdataType = "#microsoft.graph.exchangeRestoreSession",
	GranularMailboxRestoreArtifacts = new List<GranularMailboxRestoreArtifact>
	{
		new GranularMailboxRestoreArtifact
		{
			RestorePoint = new RestorePoint
			{
				AdditionalData = new Dictionary<string, object>
				{
					{
						"@odata.id" , "1f1fccc3-a642-4f61-bf49-f37b9a888279"
					},
				},
			},
			DestinationType = DestinationType.InPlace,
			SearchResponseId = "M2UyZDAwMDAwMDMxMzkzYTMyNj",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.ExchangeRestoreSessions.PostAsync(requestBody);


```