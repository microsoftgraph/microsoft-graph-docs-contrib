---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Applications.Item.Synchronization.AcquireAccessToken.AcquireAccessTokenPostRequestBody
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