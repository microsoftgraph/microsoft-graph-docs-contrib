---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new OneDriveForBusinessRestoreSession
{
	DriveRestoreArtifacts = new List<DriveRestoreArtifact>
	{
		new DriveRestoreArtifact
		{
			RestorePoint = new RestorePoint
			{
				Id = "1f1fccc3-a642-4f61-bf49-f37b9a888279",
			},
			DestinationType = DestinationType.New,
		},
		new DriveRestoreArtifact
		{
			RestorePoint = new RestorePoint
			{
				Id = "1f1fccc3-a642-4f61-bf49-f37b9a888280",
			},
			DestinationType = DestinationType.New,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.OneDriveForBusinessRestoreSessions.PostAsync(requestBody);


```