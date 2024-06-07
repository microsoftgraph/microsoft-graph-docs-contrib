---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ExchangeRestoreSession
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"mailboxRestoreArtifacts@delta" , new List<object>
			{
				new 
				{
					RestorePoint = new 
					{
						OdataId = "1b014d8c-71fe-4d00-a01a-31850bc5b32c",
					},
					DestinationType = "inPlace",
				},
				new 
				{
					RestorePoint = new 
					{
						OdataId = "2b014d8c-71fe-4d00-a01a-31850bc5b32",
					},
					DestinationType = "inPlace",
				},
				new 
				{
					RestorePoint = new 
					{
						OdataId = "3b014d8c-71fe-4d00-a01a-31850bc5b32c",
					},
					DestinationType = "inPlace",
				},
				new 
				{
					RestorePoint = new 
					{
						OdataId = "4b014d8c-71fe-4d00-a01a-31850bc5b32c",
					},
					DestinationType = "inPlace",
				},
				new 
				{
					Removed = new 
					{
						Reason = "changed",
					},
					Id = "99954f18-c8ec-4b62-85bf-cdf3b70b140e",
				},
				new 
				{
					Removed = new 
					{
						Reason = "changed",
					},
					Id = "4267e382-71a9-4c07-bef7-bda97e09c0d2",
				},
				new 
				{
					Removed = new 
					{
						Reason = "changed",
					},
					Id = "3667e382-71a9-4c07-bef7-bda97e09c0d2",
				},
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.ExchangeRestoreSessions["{exchangeRestoreSession-id}"].PatchAsync(requestBody);


```