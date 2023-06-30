---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Range()GetRequestBody();
$additionalData = [
		'address' => 'address-value', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byItemId('driveItem-id')->workbook()->worksheets()->byWorksheetId('workbookWorksheet-id')->range()->get($requestBody);


```