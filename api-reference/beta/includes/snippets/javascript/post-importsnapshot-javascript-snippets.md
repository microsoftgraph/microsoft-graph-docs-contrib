---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcSnapshotImportActionResult = {
  sourceFiles: [
    {
      sourceType: 'azureStorageAccount',
      fileType: 'dataFile',
      storageBlobInfo: {
        storageAccountId: '/subscriptions/subscription-id/resourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name',
        containerName: 'myContainer',
        blobName: 'snapshotForCloudPc.vhd'
      }
    },
    {
      sourceType: 'azureStorageAccount',
      fileType: 'virtualMachineGuestState',
      storageBlobInfo: {
        storageAccountId: '/subscriptions/subscription-idresourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name',
        containerName: 'myContainer',
        blobName: 'virtualMachineGuestState.vhd'
      }
    }
  ],
  assignedUserId: '93aff428-61f2-467f-a879-1102af6fd4a8'
};

await client.api('/deviceManagement/virtualEndpoint/snapshots/importSnapshot')
	.version('beta')
	.post(cloudPcSnapshotImportActionResult);

```