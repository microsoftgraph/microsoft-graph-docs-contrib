---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\CloudPCs\Item\SetReviewStatus\SetReviewStatusPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CloudPcReviewStatus;
use Microsoft\Graph\Beta\Generated\Models\CloudPcUserAccessLevel;
use Microsoft\Graph\Beta\Generated\Models\CloudPcBlobAccessTier;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetReviewStatusPostRequestBody();
$reviewStatus = new CloudPcReviewStatus();
$reviewStatus->setInReview(true);
$reviewStatus->setUserAccessLevel(new CloudPcUserAccessLevel('restricted'));
$reviewStatus->setAzureStorageAccountId('/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview');
$reviewStatus->setAccessTier(new CloudPcBlobAccessTier('hot'));
$requestBody->setReviewStatus($reviewStatus);

$graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCs()->byCloudPCId('cloudPC-id')->setReviewStatus()->post($requestBody)->wait();

```