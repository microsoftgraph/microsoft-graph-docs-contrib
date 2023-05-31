---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WorkbookTable();
$requestBody->setName('name-value');

$requestBody->setShowHeaders(true);

$requestBody->setShowTotals(true);

$requestBody->setStyle('style-value');



$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byItemId('driveItem-id')->workbook()->tables()->byTableId('workbookTable-id')->patch($requestBody);


```