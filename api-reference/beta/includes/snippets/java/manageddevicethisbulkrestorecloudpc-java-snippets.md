---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> managedDeviceIdsList = new LinkedList<String>();
managedDeviceIdsList.add("30d0e128-de93-41dc-89ec-33d84bb662a0");
managedDeviceIdsList.add("7c82a3e3-9459-44e4-94d9-b92f93bf78dd");

OffsetDateTime restorePointDateTime = OffsetDateTimeSerializer.deserialize("09/23/2021 04:00:00");

RestoreTimeRange timeRange = RestoreTimeRange.BEFORE;

graphClient.deviceManagement().managedDevices()
	.bulkRestoreCloudPc(ManagedDeviceBulkRestoreCloudPcParameterSet
		.newBuilder()
		.withManagedDeviceIds(managedDeviceIdsList)
		.withRestorePointDateTime(restorePointDateTime)
		.withTimeRange(timeRange)
		.build())
	.buildRequest()
	.post();

```