---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Device
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"extensionAttributes" , new 
			{
				ExtensionAttribute1 = "BYOD-Device",
			}
		},
	},
};
var result = await graphClient.Devices["{device-id}"].PatchAsync(requestBody);


```