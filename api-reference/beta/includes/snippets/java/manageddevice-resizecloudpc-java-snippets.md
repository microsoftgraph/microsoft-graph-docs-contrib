---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.manageddevices.item.resizecloudpc.ResizeCloudPcPostRequestBody resizeCloudPcPostRequestBody = new com.microsoft.graph.beta.devicemanagement.manageddevices.item.resizecloudpc.ResizeCloudPcPostRequestBody();
resizeCloudPcPostRequestBody.setTargetServicePlanId("30d0e128-de93-41dc-89ec-33d84bb662a0");
graphClient.deviceManagement().managedDevices().byManagedDeviceId("{managedDevice-id}").resizeCloudPc().post(resizeCloudPcPostRequestBody);


```