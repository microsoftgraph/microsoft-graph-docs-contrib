---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;
using Microsoft.Graph.Beta.Models;

var requestBody = new RetentionEvent
{
	OdataType = "#microsoft.graph.security.retentionEvent",
	DisplayName = "String",
	Description = "String",
	EventQueries = new List<EventQuery>
	{
		new EventQuery
		{
			OdataType = "microsoft.graph.security.eventQuery",
		},
	},
	EventTriggerDateTime = DateTimeOffset.Parse("String (timestamp)"),
	CreatedBy = new IdentitySet
	{
		OdataType = "microsoft.graph.identitySet",
	},
	EventPropagationResults = new List<EventPropagationResult>
	{
		new EventPropagationResult
		{
			OdataType = "microsoft.graph.security.eventPropagationResult",
		},
	},
	EventStatus = new RetentionEventStatus
	{
		OdataType = "microsoft.graph.security.retentionEventStatus",
	},
	LastStatusUpdateDateTime = DateTimeOffset.Parse("String (timestamp)"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Triggers.RetentionEvents.PostAsync(requestBody);


```