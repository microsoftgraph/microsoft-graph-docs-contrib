---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WorkbookChartLegend();
$requestBody->setVisible(true);

$requestBody->setPosition('position-value');

$requestBody->setOverlay(true);



$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->worksheetsById('workbookWorksheet-id')->chartsById('workbookChart-id')->legend()->patch($requestBody);


```