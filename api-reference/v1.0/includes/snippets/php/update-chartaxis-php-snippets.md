---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WorkbookChartAxis;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookChartAxis();
$majorUnit = new MajorUnit();
$requestBody->setMajorUnit($majorUnit);
$maximum = new Maximum();
$requestBody->setMaximum($maximum);
$minimum = new Minimum();
$requestBody->setMinimum($minimum);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->worksheets()->byWorkbookWorksheetId('workbookWorksheet-id')->charts()->byWorkbookChartId('workbookChart-id')->axes()->valueAxis()->patch($requestBody)->wait();

```