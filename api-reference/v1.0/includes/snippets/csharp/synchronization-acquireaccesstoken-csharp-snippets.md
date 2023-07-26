---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Applications.Item.Synchronization.AcquireAccessToken.AcquireAccessTokenPostRequestBody
{
	Credentials = new List<SynchronizationSecretKeyStringValuePair>
	{
		new SynchronizationSecretKeyStringValuePair
		{
			OdataType = "microsoft.graph.synchronizationSecretKeyStringValuePair",
		},
	},
};
await graphClient.Applications["{application-id}"].Synchronization.AcquireAccessToken.PostAsync(requestBody);


```