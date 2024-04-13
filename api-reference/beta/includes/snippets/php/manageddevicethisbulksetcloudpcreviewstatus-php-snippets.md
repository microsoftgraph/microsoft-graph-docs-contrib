---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\BulkSetCloudPcReviewStatusPostRequestBody;
use Microsoft\Graph\Generated\Models\CloudPcReviewStatus;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BulkSetCloudPcReviewStatusPostRequestBody();
$requestBody->setManagedDeviceIds(['30d0e128-de93-41dc-89ec-33d84bb662a0', '7c82a3e3-9459-44e4-94d9-b92f93bf78dd', 	]);
$reviewStatus = new CloudPcReviewStatus();
$reviewStatus->setInReview(true);
$reviewStatus->setUserAccessLevel(new CloudPcUserAccessLevel('restricted'));
$reviewStatus->setAzureStorageAccountId('/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview');
$requestBody->setReviewStatus($reviewStatus);

$result = $graphServiceClient->deviceManagement()->managedDevices()->bulkSetCloudPcReviewStatus()->post($requestBody)->wait();

```