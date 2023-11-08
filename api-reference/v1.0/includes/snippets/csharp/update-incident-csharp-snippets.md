---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.Security;

var requestBody = new Incident
{
	Classification = AlertClassification.TruePositive,
	Determination = AlertDetermination.MultiStagedAttack,
	CustomTags = new List<string>
	{
		"Demo",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Incidents["{incident-id}"].PatchAsync(requestBody);


```