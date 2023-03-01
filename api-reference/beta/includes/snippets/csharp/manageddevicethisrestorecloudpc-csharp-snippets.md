---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.ManagedDevices.Item.RestoreCloudPc.RestoreCloudPcPostRequestBody
{
	CloudPcSnapshotId = "A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8",
};
await graphClient.DeviceManagement.ManagedDevices["{managedDevice-id}"].RestoreCloudPc.PostAsync(requestBody);


```