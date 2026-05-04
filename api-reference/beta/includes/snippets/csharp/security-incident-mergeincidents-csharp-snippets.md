---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Incidents.MicrosoftGraphSecurityMergeIncidents;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new MergeIncidentsPostRequestBody
{
	IncidentIds = new List<string>
	{
		"2972395",
		"2972396",
	},
	IncidentComment = "Merging related incidents from the same campaign",
	MergeReasons = CorrelationReason.SameCampaign | CorrelationReason.SameActor,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Incidents.MicrosoftGraphSecurityMergeIncidents.PostAsync(requestBody);


```