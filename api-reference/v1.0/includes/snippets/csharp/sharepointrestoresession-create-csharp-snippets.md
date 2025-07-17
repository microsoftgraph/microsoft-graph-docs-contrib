---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new SharePointRestoreSession
{
	SiteRestoreArtifacts = new List<SiteRestoreArtifact>
	{
		new SiteRestoreArtifact
		{
			RestorePoint = new RestorePoint
			{
				Id = "1f1fccc3-a642-4f61-bf49-f37b9a888279",
			},
			DestinationType = DestinationType.InPlace,
		},
		new SiteRestoreArtifact
		{
			RestorePoint = new RestorePoint
			{
				Id = "1f1fccc3-a642-4f61-bf49-f37b9a888280",
			},
			DestinationType = DestinationType.InPlace,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.SharePointRestoreSessions.PostAsync(requestBody);


```