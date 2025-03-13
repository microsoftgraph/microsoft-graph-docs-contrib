---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.manageddevices.bulkrestorecloudpc.BulkRestoreCloudPcPostRequestBody bulkRestoreCloudPcPostRequestBody = new com.microsoft.graph.beta.devicemanagement.manageddevices.bulkrestorecloudpc.BulkRestoreCloudPcPostRequestBody();
LinkedList<String> managedDeviceIds = new LinkedList<String>();
managedDeviceIds.add("30d0e128-de93-41dc-89ec-33d84bb662a0");
managedDeviceIds.add("7c82a3e3-9459-44e4-94d9-b92f93bf78dd");
bulkRestoreCloudPcPostRequestBody.setManagedDeviceIds(managedDeviceIds);
OffsetDateTime restorePointDateTime = OffsetDateTime.parse("2021-09-23T04:00:00.0000000");
bulkRestoreCloudPcPostRequestBody.setRestorePointDateTime(restorePointDateTime);
bulkRestoreCloudPcPostRequestBody.setTimeRange(RestoreTimeRange.Before);
var result = graphClient.deviceManagement().managedDevices().bulkRestoreCloudPc().post(bulkRestoreCloudPcPostRequestBody);


```