---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.External.Connections.Item.Items.Item.Item
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"acl" , new List<>
			{
				new 
				{
					Type = "user",
					Value = "e811976d-83df-4cbd-8b9b-5215b18aa874",
					AccessType = "grant",
				},
				new 
				{
					Type = "externalGroup",
					Value = "14m1b9c38qe647f6a",
					AccessType = "deny",
				},
			}
		},
		{
			"properties" , new 
			{
				Title = "Error in the payment gateway",
				Priority = 1,
				Assignee = "john@contoso.com",
			}
		},
		{
			"content" , new 
			{
				Value = "Error in payment gateway...",
				Type = "text",
			}
		},
	},
};
await graphClient.External.Connections["{externalConnection-id}"].Items["{externalItem-id}"].PutAsync(requestBody);


```