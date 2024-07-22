---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Solutions.BackupRestore.RestorePoints.Search;
using Microsoft.Graph.Beta.Models;

var requestBody = new SearchPostRequestBody
{
	ProtectionUnitIds = new List<string>
	{
		"23014d8c-71fe-4d00-a01a-31850bc5b42a",
		"43014d8c-71fe-4d00-a01a-31850bc5b42b",
		"63014d8c-71fe-4d00-a01a-31850bc5b42c",
		"83014d8c-71fe-4d00-a01a-31850bc5b42d",
	},
	ProtectionTimePeriod = new TimePeriod
	{
		StartDateTime = DateTimeOffset.Parse("2021-01-01T00:00:00Z"),
		EndDateTime = DateTimeOffset.Parse("2021-01-08T00:00:00Z"),
	},
	RestorePointPreference = RestorePointPreference.Latest,
	Tags = RestorePointTags.FastRestore,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.RestorePoints.Search.PostAsync(requestBody);


```