---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.manageddevices.item.windowsdefenderscan.WindowsDefenderScanPostRequestBody windowsDefenderScanPostRequestBody = new com.microsoft.graph.devicemanagement.manageddevices.item.windowsdefenderscan.WindowsDefenderScanPostRequestBody();
windowsDefenderScanPostRequestBody.setQuickScan(true);
graphClient.deviceManagement().managedDevices().byManagedDeviceId("{managedDevice-id}").windowsDefenderScan().post(windowsDefenderScanPostRequestBody);


```