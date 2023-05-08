---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WorkbookChartAxis();
$majorUnit = new Json();

$requestBody->setMajorUnit($majorUnit);
$maximum = new Json();

$requestBody->setMaximum($maximum);
$minimum = new Json();

$requestBody->setMinimum($minimum);


$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->worksheetsById('workbookWorksheet-id')->chartsById('workbookChart-id')->axes()->valueAxis()->patch($requestBody);


```