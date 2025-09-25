---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WorkbookComment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookComment();
$requestBody->setContent('This is my comment.');
$requestBody->setContentType('plain');
$additionalData = [
	'cellAddress' => 'Sheet1!A1',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->comments()->post($requestBody)->wait();

```