---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WorkbookNamedItem();
$requestBody->setType('type-value');

$requestBody->setScope('scope-value');

$requestBody->setComment('comment-value');

$value = new Json();

$requestBody->setValue($value);
$requestBody->setVisible(true);



$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->namesById('workbookNamedItem-id')->patch($requestBody);


```