---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WorkbookComment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookComment();
$requestBody->setCellAddress('Sheet1!A1');
$requestBody->setContent('This is my comment.');
$requestBody->setContentType('plain');

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->comments()->post($requestBody)->wait();

```