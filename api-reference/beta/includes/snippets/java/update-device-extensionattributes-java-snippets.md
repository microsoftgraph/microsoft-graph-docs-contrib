---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Device device = new Device();
OnPremisesExtensionAttributes extensionAttributes = new OnPremisesExtensionAttributes();
extensionAttributes.setExtensionAttribute1("BYOD-Device");
device.setExtensionAttributes(extensionAttributes);
Device result = graphClient.devices().byDeviceId("{device-id}").patch(device);


```