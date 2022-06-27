---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcSnapshotId = "A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8";

await graphClient.DeviceManagement.ManagedDevices["{managedDevice-id}"]
	.RestoreCloudPc(cloudPcSnapshotId)
	.Request()
	.PostAsync();

```