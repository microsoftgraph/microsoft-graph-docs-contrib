---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.snapshots.importsnapshot.ImportSnapshotPostRequestBody importSnapshotPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.snapshots.importsnapshot.ImportSnapshotPostRequestBody();
LinkedList<CloudPcSnapshotImportActionDetail> sourceFiles = new LinkedList<CloudPcSnapshotImportActionDetail>();
CloudPcSnapshotImportActionDetail cloudPcSnapshotImportActionDetail = new CloudPcSnapshotImportActionDetail();
cloudPcSnapshotImportActionDetail.setSourceType(CloudPcSnapshotImportSourceType.AzureStorageAccount);
cloudPcSnapshotImportActionDetail.setFileType(CloudPcSnapshotImportFileType.DataFile);
CloudPcStorageBlobDetail storageBlobInfo = new CloudPcStorageBlobDetail();
storageBlobInfo.setStorageAccountId("/subscriptions/subscription-id/resourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name");
storageBlobInfo.setContainerName("myContainer");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("blobName", "snapshotForCloudPc.vhd");
storageBlobInfo.setAdditionalData(additionalData);
cloudPcSnapshotImportActionDetail.setStorageBlobInfo(storageBlobInfo);
sourceFiles.add(cloudPcSnapshotImportActionDetail);
CloudPcSnapshotImportActionDetail cloudPcSnapshotImportActionDetail1 = new CloudPcSnapshotImportActionDetail();
cloudPcSnapshotImportActionDetail1.setSourceType(CloudPcSnapshotImportSourceType.AzureStorageAccount);
cloudPcSnapshotImportActionDetail1.setFileType(CloudPcSnapshotImportFileType.VirtualMachineGuestState);
CloudPcStorageBlobDetail storageBlobInfo1 = new CloudPcStorageBlobDetail();
storageBlobInfo1.setStorageAccountId("/subscriptions/subscription-idresourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name");
storageBlobInfo1.setContainerName("myContainer");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("blobName", "virtualMachineGuestState.vhd");
storageBlobInfo1.setAdditionalData(additionalData1);
cloudPcSnapshotImportActionDetail1.setStorageBlobInfo(storageBlobInfo1);
sourceFiles.add(cloudPcSnapshotImportActionDetail1);
importSnapshotPostRequestBody.setSourceFiles(sourceFiles);
importSnapshotPostRequestBody.setAssignedUserId("93aff428-61f2-467f-a879-1102af6fd4a8");
var result = graphClient.deviceManagement().virtualEndpoint().snapshots().importSnapshot().post(importSnapshotPostRequestBody);


```