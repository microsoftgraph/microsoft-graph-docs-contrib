---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\ManagedDevices\Item\SetCloudPcReviewStatus\SetCloudPcReviewStatusPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CloudPcReviewStatus;
use Microsoft\Graph\Beta\Generated\Models\CloudPcUserAccessLevel;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetCloudPcReviewStatusPostRequestBody();
$reviewStatus = new CloudPcReviewStatus();
$reviewStatus->setInReview(true);
$reviewStatus->setUserAccessLevel(new CloudPcUserAccessLevel('restricted'));
$reviewStatus->setAzureStorageAccountId('/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview');
$requestBody->setReviewStatus($reviewStatus);

$graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->setCloudPcReviewStatus()->post($requestBody)->wait();

```