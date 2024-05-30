---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.manageddevices.item.wipe.WipePostRequestBody wipePostRequestBody = new com.microsoft.graph.devicemanagement.manageddevices.item.wipe.WipePostRequestBody();
wipePostRequestBody.setKeepEnrollmentData(true);
wipePostRequestBody.setKeepUserData(true);
wipePostRequestBody.setMacOsUnlockCode("Mac Os Unlock Code value");
wipePostRequestBody.setPersistEsimDataPlan(true);
graphClient.deviceManagement().managedDevices().byManagedDeviceId("{managedDevice-id}").wipe().post(wipePostRequestBody);


```