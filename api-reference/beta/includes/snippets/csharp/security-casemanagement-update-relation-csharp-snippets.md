---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security.CaseManagement;

var requestBody = new Relation
{
	RelatedResourceId = "987654321",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"displayName" , "Related incident"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.CaseManagement.Cases["{case-id}"].Relations["{relation-id}"].PatchAsync(requestBody);


```