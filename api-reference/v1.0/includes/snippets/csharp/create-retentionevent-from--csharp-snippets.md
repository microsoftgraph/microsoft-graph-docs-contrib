---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.Security.RetentionEvent
{
	OdataType = "#microsoft.graph.security.retentionEvent",
	DisplayName = "String",
	Description = "String",
	EventTriggerDateTime = DateTimeOffset.Parse("String (timestamp)"),
	CreatedBy = new IdentitySet
	{
		OdataType = "microsoft.graph.identitySet",
	},
	EventPropagationResults = new List<Microsoft.Graph.Models.Security.EventPropagationResult>
	{
		new Microsoft.Graph.Models.Security.EventPropagationResult
		{
			OdataType = "microsoft.graph.security.eventPropagationResult",
		},
	},
	EventStatus = new Microsoft.Graph.Models.Security.RetentionEventStatus
	{
		OdataType = "microsoft.graph.security.retentionEventStatus",
	},
	LastStatusUpdateDateTime = DateTimeOffset.Parse("String (timestamp)"),
	AdditionalData = new Dictionary<string, object>
	{
		{
			"eventQuery" , new List<object>
			{
				new 
				{
					OdataType = "microsoft.graph.security.eventQuery",
				},
			}
		},
	},
};
var result = await graphClient.Security.Triggers.RetentionEvents.PostAsync(requestBody);


```