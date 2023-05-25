---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Row();
$additionalData = [
		'index' => $requestBody = new Index();

$requestBody->setIndex($index);

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->drives()->byDriveId('drive-id')->items()->byItemId('driveItem-id')->workbook()->tables()->byTableId('workbookTable-id')->rows()->byRowId('workbookTableRow-id')->post($requestBody);


```