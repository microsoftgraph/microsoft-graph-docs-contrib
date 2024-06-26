---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\Workbook\Worksheets\Item\Charts\Item\SetPosition\SetPositionPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetPositionPostRequestBody();
$requestBody->setStartCell('startCell-value');
$requestBody->setEndCell('endCell-value');

$graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->worksheets()->byWorkbookWorksheetId('workbookWorksheet-id')->charts()->byWorkbookChartId('workbookChart-id')->setPosition()->post($requestBody)->wait();

```