---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WorkbookChartDataLabels();
$requestBody->setPosition('position-value');

$requestBody->setShowValue(true);

$requestBody->setShowSeriesName(true);

$requestBody->setShowCategoryName(true);

$requestBody->setShowLegendKey(true);



$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->worksheetsById('workbookWorksheet-id')->chartsById('workbookChart-id')->dataLabels()->patch($requestBody);


```