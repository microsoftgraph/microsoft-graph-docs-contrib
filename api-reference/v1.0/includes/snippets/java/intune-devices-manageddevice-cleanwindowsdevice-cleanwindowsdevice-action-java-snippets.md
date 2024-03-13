---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.manageddevices.item.cleanwindowsdevice.CleanWindowsDevicePostRequestBody cleanWindowsDevicePostRequestBody = new com.microsoft.graph.devicemanagement.manageddevices.item.cleanwindowsdevice.CleanWindowsDevicePostRequestBody();
cleanWindowsDevicePostRequestBody.setKeepUserData(true);
graphClient.deviceManagement().managedDevices().byManagedDeviceId("{managedDevice-id}").cleanWindowsDevice().post(cleanWindowsDevicePostRequestBody);


```