---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceAppManagement deviceAppManagement = new DeviceAppManagement();
deviceAppManagement.setOdataType("#microsoft.graph.deviceAppManagement");
DeviceAppManagement result = graphClient.deviceAppManagement().patch(deviceAppManagement);


```