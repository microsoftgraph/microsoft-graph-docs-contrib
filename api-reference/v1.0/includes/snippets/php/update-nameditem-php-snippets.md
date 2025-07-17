---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WorkbookNamedItem;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookNamedItem();
$requestBody->setType('type-value');
$requestBody->setScope('scope-value');
$requestBody->setComment('comment-value');
$value = new UntypedNode();
$requestBody->setValue($value);
$requestBody->setVisible(true);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->names()->byWorkbookNamedItemId('workbookNamedItem-id')->patch($requestBody)->wait();

```