---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Solutions.BackupRestore.RestorePoints.Search;
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new SearchPostRequestBody
{
	ProtectionUnitIds = new List<string>
	{
		"23014d8c-71fe-4d00-a01a-31850bc5b42a",
	},
	ProtectionTimePeriod = new TimePeriod
	{
		StartDateTime = DateTimeOffset.Parse("2021-01-01T00:00:00Z"),
	},
	RestorePointPreference = RestorePointPreference.Oldest,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"artifactQuery" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"queryExpression", new UntypedString("((subject -contains ‘Finance’)  -or  (subject -contains ‘Legal’)) -and (sender -eq 'alex@contoso.com') -and (recipient -eq 'carol@contoso.com') -and hasAttachment -eq true")
				},
				{
					"artifactType", new UntypedString("message")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.RestorePoints.Search.PostAsync(requestBody);


```