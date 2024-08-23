---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Applications.Item.Synchronization.AcquireAccessToken;
using Microsoft.Graph.Models;

var requestBody = new AcquireAccessTokenPostRequestBody
{
	Credentials = new List<SynchronizationSecretKeyStringValuePair>
	{
		new SynchronizationSecretKeyStringValuePair
		{
			OdataType = "microsoft.graph.synchronizationSecretKeyStringValuePair",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Applications["{application-id}"].Synchronization.AcquireAccessToken.PostAsync(requestBody);


```