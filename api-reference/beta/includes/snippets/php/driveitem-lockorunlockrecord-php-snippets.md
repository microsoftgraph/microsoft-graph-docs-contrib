---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ItemRetentionLabel;
use Microsoft\Graph\Beta\Generated\Models\RetentionLabelSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemRetentionLabel();
$retentionSettings = new RetentionLabelSettings();
$retentionSettings->setIsRecordLocked(true);
$requestBody->setRetentionSettings($retentionSettings);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->retentionLabel()->patch($requestBody)->wait();

```