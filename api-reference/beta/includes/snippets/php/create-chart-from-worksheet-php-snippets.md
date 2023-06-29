---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WorkbookChart();
$requestBody->setId('id-value');

$requestBody->setHeight(99);

$requestBody->setLeft(99);



$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byItemId('driveItem-id')->workbook()->worksheets()->byWorksheetId('workbookWorksheet-id')->charts()->post($requestBody);


```