---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Alerts_v2.MicrosoftGraphSecurityMoveAlerts;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new MoveAlertsPostRequestBody
{
	AlertIds = new List<string>
	{
		"da637551227677560813_-961444813",
		"da637551227677560813_-961444814",
	},
	IncidentId = "2972395",
	AlertComment = "Moving alerts for investigation consolidation",
	NewCorrelationReasons = CorrelationReason.SameAsset | CorrelationReason.TemporalProximity,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Alerts_v2.MicrosoftGraphSecurityMoveAlerts.PostAsync(requestBody);


```