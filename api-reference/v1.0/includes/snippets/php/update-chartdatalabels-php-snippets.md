---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WorkbookChartDataLabels;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookChartDataLabels();
$requestBody->setPosition('position-value');
$requestBody->setShowValue(true);
$requestBody->setShowSeriesName(true);
$requestBody->setShowCategoryName(true);
$requestBody->setShowLegendKey(true);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->worksheets()->byWorkbookWorksheetId('workbookWorksheet-id')->charts()->byWorkbookChartId('workbookChart-id')->dataLabels()->patch($requestBody)->wait();

```