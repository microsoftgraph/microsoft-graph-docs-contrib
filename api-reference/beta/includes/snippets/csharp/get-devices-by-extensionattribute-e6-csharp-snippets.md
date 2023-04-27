---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Devices.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "extensionAttributes/extensionAttribute1 eq 'BYOD-Device'";
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```