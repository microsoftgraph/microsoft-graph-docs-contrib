---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.External.Connections.Item.Items.Item.Item
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"acl" , new List<>
			{
				new 
				{
					Type = "everyone",
					Value = "67a141d8-cf4e-4528-ba07-bed21bfacd2d",
					AccessType = "grant",
				},
			}
		},
	},
};
await graphClient.External.Connections["{externalConnection-id}"].Items["{externalItem-id}"].PatchAsync(requestBody);


```