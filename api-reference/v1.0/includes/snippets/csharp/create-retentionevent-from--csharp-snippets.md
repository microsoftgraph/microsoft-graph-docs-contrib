---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.Security;

var requestBody = new RetentionEvent
{
	OdataType = "#microsoft.graph.security.retentionEvent",
	DisplayName = "String",
	Description = "String",
	EventTriggerDateTime = DateTimeOffset.Parse("String (timestamp)"),
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
		{
			"retentionEventType@odata.bind" , "https://graph.microsoft.com/v1.0/security/triggerTypes/retentionEventType/9eecef97-fb3c-4c68-825b-4dd74530863a"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Triggers.RetentionEvents.PostAsync(requestBody);


```