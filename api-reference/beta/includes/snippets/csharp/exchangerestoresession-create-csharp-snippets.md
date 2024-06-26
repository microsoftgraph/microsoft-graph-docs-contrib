---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ExchangeRestoreSession
{
	MailboxRestoreArtifacts = new List<MailboxRestoreArtifact>
	{
		new MailboxRestoreArtifact
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
		},
		new MailboxRestoreArtifact
		{
			RestorePoint = new RestorePoint
			{
				AdditionalData = new Dictionary<string, object>
				{
					{
						"@odata.id" , "1f1fccc3-a642-4f61-bf49-f37b9a888280"
					},
				},
			},
			DestinationType = DestinationType.InPlace,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.ExchangeRestoreSessions.PostAsync(requestBody);


```