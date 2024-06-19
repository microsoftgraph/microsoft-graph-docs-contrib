---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new SharePointRestoreSession
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"siteRestoreArtifacts@delta" , new List<object>
			{
				new 
				{
					RestorePoint = new 
					{
						OdataId = "1b014d8c-71fe-4d00-a01a-31850bc5b32c",
					},
					DestinationType = "new",
				},
				new 
				{
					RestorePoint = new 
					{
						OdataId = "2b014d8c-71fe-4d00-a01a-31850bc5b32",
					},
					DestinationType = "new",
				},
				new 
				{
					RestorePoint = new 
					{
						OdataId = "3b014d8c-71fe-4d00-a01a-31850bc5b32c",
					},
					DestinationType = "new",
				},
				new 
				{
					RestorePoint = new 
					{
						OdataId = "4b014d8c-71fe-4d00-a01a-31850bc5b32c",
					},
					DestinationType = "new",
				},
				new 
				{
					Removed = new 
					{
						Reason = "changed",
					},
					Id = "959ba739-70b5-43c4-8c90-b2c22014f18a",
				},
				new 
				{
					Removed = new 
					{
						Reason = "changed",
					},
					Id = "959ba739-70b5-43c4-8c90-b2c22014f18b",
				},
				new 
				{
					Removed = new 
					{
						Reason = "changed",
					},
					Id = "959ba739-70b5-43c4-8c90-b2c22014f18c",
				},
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.SharePointRestoreSessions["{sharePointRestoreSession-id}"].PatchAsync(requestBody);


```