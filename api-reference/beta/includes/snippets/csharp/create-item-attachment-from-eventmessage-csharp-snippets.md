---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Attachment
{
	OdataType = "#Microsoft.OutlookServices.ItemAttachment",
	Name = "name-value",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"item" , new Message
			{
				OdataType = "microsoft.graph.message",
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Events["{event-id}"].Attachments.PostAsync(requestBody);


```