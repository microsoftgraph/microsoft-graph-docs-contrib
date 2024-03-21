---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookTable();
$requestBody->setName('name-value');
$requestBody->setShowHeaders(true);
$requestBody->setShowTotals(true);
$requestBody->setStyle('style-value');

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->tables()->byWorkbookTableId('workbookTable-id')->patch($requestBody)->wait();

```