---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.ManagedDevices.Item.RestoreCloudPc;

var requestBody = new RestoreCloudPcPostRequestBody
{
	CloudPcSnapshotId = "A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.ManagedDevices["{managedDevice-id}"].RestoreCloudPc.PostAsync(requestBody);


```