---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Snapshots.ImportSnapshot;
using Microsoft.Graph.Beta.Models;

var requestBody = new ImportSnapshotPostRequestBody
{
	SourceFiles = new List<CloudPcSnapshotImportActionDetail>
	{
		new CloudPcSnapshotImportActionDetail
		{
			SourceType = CloudPcSnapshotImportSourceType.AzureStorageAccount,
			FileType = CloudPcSnapshotImportFileType.DataFile,
			StorageBlobInfo = new CloudPcStorageBlobDetail
			{
				StorageAccountId = "/subscriptions/subscription-id/resourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name",
				ContainerName = "myContainer",
				AdditionalData = new Dictionary<string, object>
				{
					{
						"blobName" , "snapshotForCloudPc.vhd"
					},
				},
			},
		},
		new CloudPcSnapshotImportActionDetail
		{
			SourceType = CloudPcSnapshotImportSourceType.AzureStorageAccount,
			FileType = CloudPcSnapshotImportFileType.VirtualMachineGuestState,
			StorageBlobInfo = new CloudPcStorageBlobDetail
			{
				StorageAccountId = "/subscriptions/subscription-idresourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name",
				ContainerName = "myContainer",
				AdditionalData = new Dictionary<string, object>
				{
					{
						"blobName" , "virtualMachineGuestState.vhd"
					},
				},
			},
		},
	},
	AssignedUserId = "93aff428-61f2-467f-a879-1102af6fd4a8",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.Snapshots.ImportSnapshot.PostAsync(requestBody);


```