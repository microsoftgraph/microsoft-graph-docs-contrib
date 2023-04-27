---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String cloudPcSnapshotId = "A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8";

graphClient.deviceManagement().managedDevices("5e1387aa-d960-4916-ae7c-293b977e49bf")
	.restoreCloudPc(ManagedDeviceRestoreCloudPcParameterSet
		.newBuilder()
		.withCloudPcSnapshotId(cloudPcSnapshotId)
		.build())
	.buildRequest()
	.post();

```