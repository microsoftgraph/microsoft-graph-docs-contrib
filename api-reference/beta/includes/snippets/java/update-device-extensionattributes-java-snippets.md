---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Device device = new Device();
OnPremisesExtensionAttributes extensionAttributes = new OnPremisesExtensionAttributes();
extensionAttributes.extensionAttribute1 = "BYOD-Device";
device.extensionAttributes = extensionAttributes;

graphClient.devices("{id}")
	.buildRequest()
	.patch(device);

```