---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Device
{
	ExtensionAttributes = new OnPremisesExtensionAttributes
	{
		ExtensionAttribute1 = "BYOD-Device",
	},
};
var result = await graphClient.Devices["{device-id}"].PatchAsync(requestBody);


```