---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WorkbookNamedItem;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookNamedItem();
$requestBody->setType('type-value');
$requestBody->setScope('scope-value');
$requestBody->setComment('comment-value');
$value = new Value();
$requestBody->setValue($value);
$requestBody->setVisible(true);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->names()->byWorkbookNamedItemId('workbookNamedItem-id')->patch($requestBody)->wait();

```