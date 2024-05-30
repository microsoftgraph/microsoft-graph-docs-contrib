---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ItemRetentionLabel;
use Microsoft\Graph\Generated\Models\RetentionLabelSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemRetentionLabel();
$retentionSettings = new RetentionLabelSettings();
$retentionSettings->setIsRecordLocked(true);
$requestBody->setRetentionSettings($retentionSettings);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->retentionLabel()->patch($requestBody)->wait();

```