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
			UserPrincipalName = "source-user@contoso.onmicrosoft.com",
		},
		TargetUserIdentity = new UserIdentity
		{
			UserPrincipalName = "target-user@fabrico.onmicrosoft.com",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.SharePoint.Migrations.CrossOrganizationMigrationTasks.PostAsync(requestBody);


```