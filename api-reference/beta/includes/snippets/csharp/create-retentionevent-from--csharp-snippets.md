---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.RetentionEvent
{
	OdataType = "#microsoft.graph.security.retentionEvent",
	DisplayName = "String",
	Description = "String",
	EventQueries = new List<Microsoft.Graph.Beta.Models.Security.EventQuery>
	{
		new Microsoft.Graph.Beta.Models.Security.EventQuery
		{
			OdataType = "microsoft.graph.security.eventQueries",
		},
	},
	EventTriggerDateTime = DateTimeOffset.Parse("String (timestamp)"),
	CreatedBy = new IdentitySet
	{
		OdataType = "microsoft.graph.identitySet",
	},
	EventPropagationResults = new List<Microsoft.Graph.Beta.Models.Security.EventPropagationResult>
	{
		new Microsoft.Graph.Beta.Models.Security.EventPropagationResult
		{
			OdataType = "microsoft.graph.security.eventPropagationResult",
		},
	},
	EventStatus = new Microsoft.Graph.Beta.Models.Security.RetentionEventStatus
	{
		OdataType = "microsoft.graph.security.retentionEventStatus",
	},
	LastStatusUpdateDateTime = DateTimeOffset.Parse("String (timestamp)"),
};
var result = await graphClient.Security.Triggers.RetentionEvents.PostAsync(requestBody);


```