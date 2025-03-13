---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Device device = new Device();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 extensionAttributes = new ();
extensionAttributes.setExtensionAttribute1("BYOD-Device");
additionalData.put("extensionAttributes", extensionAttributes);
device.setAdditionalData(additionalData);
Device result = graphClient.devices().byDeviceId("{device-id}").patch(device);


```