---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var retentionEvent = new Microsoft.Graph.Security.RetentionEvent
{
	DisplayName = "String",
	Description = "String",
	EventQueries = new List<Microsoft.Graph.Security.EventQuery>()
	{
		new EventQueries
		{
		}
	},
	EventTriggerDateTime = DateTimeOffset.Parse("String (timestamp)"),
	CreatedBy = new IdentitySet
	{
	},
	EventPropagationResults = new List<Microsoft.Graph.Security.EventPropagationResult>()
	{
		new EventPropagationResult
		{
		}
	},
	EventStatus = new RetentionEventStatus
	{
	},
	LastStatusUpdateDateTime = DateTimeOffset.Parse("String (timestamp)")
};

await graphClient.Security.Triggers.RetentionEvents
	.Request()
	.AddAsync(retentionEvent);

```