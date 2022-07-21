---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var device = new Device
{
	ExtensionAttributes = new OnPremisesExtensionAttributes
	{
		ExtensionAttribute1 = "BYOD-Device"
	}
};

await graphClient.Devices["{device-id}"]
	.Request()
	.UpdateAsync(device);

```