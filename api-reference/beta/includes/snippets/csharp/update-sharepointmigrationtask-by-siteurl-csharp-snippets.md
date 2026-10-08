---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new SharePointMigrationTask
{
	Parameters = new SharePointSiteMigrationTaskParameters
	{
		OdataType = "#microsoft.graph.sharePointSiteMigrationTaskParameters",
		TargetOrganizationHost = "https://fabrico-my.sharepoint.com",
		SourceSiteUrl = "https://contoso.sharepoint.com/sites/IT",
		TargetSiteUrl = "https://fabrico.sharepoint.com/sites/IT",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.SharePoint.Migrations.CrossOrganizationMigrationTasks.PostAsync(requestBody);


```