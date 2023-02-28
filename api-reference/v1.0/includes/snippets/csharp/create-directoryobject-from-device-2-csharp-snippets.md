---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Devices.Item.RegisteredUsers.Item.RegisteredUser
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.id" , "https://graph.microsoft.com/v1.0/directoryObjects/{id}"
		},
	},
};
await graphClient.Devices["device-id"].RegisteredUsers["directoryObject-id"].PostAsync(requestBody);


```