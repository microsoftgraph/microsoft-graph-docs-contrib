---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceCategory deviceCategory = new DeviceCategory();
deviceCategory.setOdataType("#microsoft.graph.deviceCategory");
deviceCategory.setDisplayName("Display Name value");
deviceCategory.setDescription("Description value");
DeviceCategory result = graphClient.deviceManagement().deviceCategories().post(deviceCategory);


```