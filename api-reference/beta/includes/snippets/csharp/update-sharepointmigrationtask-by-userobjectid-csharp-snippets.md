---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new SharePointMigrationTask
{
	Parameters = new SharePointUserMigrationTaskParameters
	{
		OdataType = "#microsoft.graph.sharePointUserMigrationTaskParameters",
		TargetOrganizationHost = "https://fabrico-my.sharepoint.com",
		SourceUserIdentity = new UserIdentity
		{
			Id = "da157a29-f793-4dd6-9c73-41d2c73c2546",
		},
		TargetUserIdentity = new UserIdentity
		{
			Id = "cb53ea98-6151-44cc-9c21-098a3c3e3988",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.SharePoint.Migrations.CrossOrganizationMigrationTasks.PostAsync(requestBody);


```