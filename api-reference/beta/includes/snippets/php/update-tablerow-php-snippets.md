---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookTableRow();
$requestBody->setIndex(99);
$requestBody->setValues('values-value');

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->tables()->byWorkbookTableId('workbookTable-id')->rows()->byWorkbookTableRowId('workbookTableRow-id')->patch($requestBody)->wait();

```