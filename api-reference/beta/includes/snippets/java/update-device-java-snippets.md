---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Device device = new Device();
device.setAccountEnabled(false);
Device result = graphClient.devices().byDeviceId("{device-id}").patch(device);


```