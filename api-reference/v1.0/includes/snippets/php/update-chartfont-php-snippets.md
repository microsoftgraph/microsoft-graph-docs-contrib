---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WorkbookChartFont();
$requestBody->setBold(true);

$requestBody->setColor('color-value');

$requestBody->setItalic(true);

$requestBody->setName('name-value');

$requestBody->setSize(99);

$requestBody->setUnderline('underline-value');



$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->worksheetsById('workbookWorksheet-id')->chartsById('workbookChart-id')->axes()->valueAxis()->format()->font()->patch($requestBody);


```