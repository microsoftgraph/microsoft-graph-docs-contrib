---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WorkbookTableColumn();
$requestBody->setName('name-value');

$requestBody->setIndex(99);

$requestBody->setValues('values-value');



$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->tablesById('workbookTable-id')->columnsById('workbookTableColumn-id')->patch($requestBody);


```