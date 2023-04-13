---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var device = new Device
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"extensionAttributes", "{\"extensionAttribute1\":\"BYOD-Device\"}"}
	}
};

await graphClient.Devices["{device-id}"]
	.Request()
	.UpdateAsync(device);

```