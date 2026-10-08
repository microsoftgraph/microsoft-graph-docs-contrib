---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new SharePointMigrationTask
{
	Parameters = new SharePointGroupMigrationTaskParameters
	{
		OdataType = "#microsoft.graph.sharePointGroupMigrationTaskParameters",
		TargetOrganizationHost = "https://fabrico-my.sharepoint.com",
		SourceGroupIdentity = new GroupIdentity
		{
			MailNickname = "source-group",
		},
		TargetGroupIdentity = new GroupIdentity
		{
			MailNickname = "target-group",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.SharePoint.Migrations.CrossOrganizationMigrationTasks.PostAsync(requestBody);


```