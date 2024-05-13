---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SetCloudPcReviewStatusPostRequestBody;
use Microsoft\Graph\Generated\Models\CloudPcReviewStatus;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetCloudPcReviewStatusPostRequestBody();
$reviewStatus = new CloudPcReviewStatus();
$reviewStatus->setInReview(true);
$reviewStatus->setUserAccessLevel(new CloudPcUserAccessLevel('restricted'));
$reviewStatus->setAzureStorageAccountId('/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview');
$requestBody->setReviewStatus($reviewStatus);

$graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->setCloudPcReviewStatus()->post($requestBody)->wait();

```