---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Drives\Item\Items\Item\Workbook\Names\Item\Range\Delete\DeletePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeletePostRequestBody();
$requestBody->setShift('shift-value');

$graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->names()->byWorkbookNamedItemId('workbookNamedItem-id')->range()->delete()->post($requestBody)->wait();

```