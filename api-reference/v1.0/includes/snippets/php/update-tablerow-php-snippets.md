---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WorkbookTableRow();
$requestBody->setIndex(99);

$requestBody->setValues('values-value');



$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byItemId('driveItem-id')->workbook()->tables()->byTableId('workbookTable-id')->rows()->byRowId('workbookTableRow-id')->patch($requestBody);


```