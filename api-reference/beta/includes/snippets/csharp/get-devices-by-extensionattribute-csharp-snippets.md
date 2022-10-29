---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var devices = await graphClient.Devices
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.Filter("extensionAttributes/extensionAttribute1 eq 'BYOD-Device'")
	.GetAsync();

```