---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WorkbookWorksheet();
$requestBody->setPosition(99);

$requestBody->setName('name-value');

$requestBody->setVisibility('visibility-value');



$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->worksheetsById('workbookWorksheet-id')->patch($requestBody);


```