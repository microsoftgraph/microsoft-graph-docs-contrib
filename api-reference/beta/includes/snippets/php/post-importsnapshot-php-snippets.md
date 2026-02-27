---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\Snapshots\ImportSnapshot\ImportSnapshotPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CloudPcSnapshotImportActionDetail;
use Microsoft\Graph\Beta\Generated\Models\CloudPcSnapshotImportSourceType;
use Microsoft\Graph\Beta\Generated\Models\CloudPcSnapshotImportFileType;
use Microsoft\Graph\Beta\Generated\Models\CloudPcStorageBlobDetail;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ImportSnapshotPostRequestBody();
$sourceFilesCloudPcSnapshotImportActionDetail1 = new CloudPcSnapshotImportActionDetail();
$sourceFilesCloudPcSnapshotImportActionDetail1->setSourceType(new CloudPcSnapshotImportSourceType('azureStorageAccount'));
$sourceFilesCloudPcSnapshotImportActionDetail1->setFileType(new CloudPcSnapshotImportFileType('dataFile'));
$sourceFilesCloudPcSnapshotImportActionDetail1StorageBlobInfo = new CloudPcStorageBlobDetail();
$sourceFilesCloudPcSnapshotImportActionDetail1StorageBlobInfo->setStorageAccountId('/subscriptions/subscription-id/resourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name');
$sourceFilesCloudPcSnapshotImportActionDetail1StorageBlobInfo->setContainerName('myContainer');
$additionalData = [
	'blobName' => 'snapshotForCloudPc.vhd',
];
$sourceFilesCloudPcSnapshotImportActionDetail1StorageBlobInfo->setAdditionalData($additionalData);
$sourceFilesCloudPcSnapshotImportActionDetail1->setStorageBlobInfo($sourceFilesCloudPcSnapshotImportActionDetail1StorageBlobInfo);
$sourceFilesArray []= $sourceFilesCloudPcSnapshotImportActionDetail1;
$sourceFilesCloudPcSnapshotImportActionDetail2 = new CloudPcSnapshotImportActionDetail();
$sourceFilesCloudPcSnapshotImportActionDetail2->setSourceType(new CloudPcSnapshotImportSourceType('azureStorageAccount'));
$sourceFilesCloudPcSnapshotImportActionDetail2->setFileType(new CloudPcSnapshotImportFileType('virtualMachineGuestState'));
$sourceFilesCloudPcSnapshotImportActionDetail2StorageBlobInfo = new CloudPcStorageBlobDetail();
$sourceFilesCloudPcSnapshotImportActionDetail2StorageBlobInfo->setStorageAccountId('/subscriptions/subscription-idresourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name');
$sourceFilesCloudPcSnapshotImportActionDetail2StorageBlobInfo->setContainerName('myContainer');
$additionalData = [
	'blobName' => 'virtualMachineGuestState.vhd',
];
$sourceFilesCloudPcSnapshotImportActionDetail2StorageBlobInfo->setAdditionalData($additionalData);
$sourceFilesCloudPcSnapshotImportActionDetail2->setStorageBlobInfo($sourceFilesCloudPcSnapshotImportActionDetail2StorageBlobInfo);
$sourceFilesArray []= $sourceFilesCloudPcSnapshotImportActionDetail2;
$requestBody->setSourceFiles($sourceFilesArray);

$requestBody->setAssignedUserId('93aff428-61f2-467f-a879-1102af6fd4a8');

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->snapshots()->importSnapshot()->post($requestBody)->wait();

```