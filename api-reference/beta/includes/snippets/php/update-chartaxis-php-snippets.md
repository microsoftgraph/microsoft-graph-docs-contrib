---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookChartAxis();
$majorUnit = new Json();
$requestBody->setMajorUnit($majorUnit);
$maximum = new Json();
$requestBody->setMaximum($maximum);
$minimum = new Json();
$requestBody->setMinimum($minimum);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->worksheets()->byWorkbookWorksheetId('workbookWorksheet-id')->charts()->byWorkbookChartId('workbookChart-id')->axes()->valueAxis()->patch($requestBody)->wait();

```