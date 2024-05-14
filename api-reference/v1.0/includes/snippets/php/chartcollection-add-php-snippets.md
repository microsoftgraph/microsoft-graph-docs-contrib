---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AddPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddPostRequestBody();
$requestBody->setType('ColumnStacked');
$requestBody->setSourceData('A1:B1');
$requestBody->setSeriesBy('Auto');

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->worksheets()->byWorkbookWorksheetId('workbookWorksheet-id')->charts()->add()->post($requestBody)->wait();

```