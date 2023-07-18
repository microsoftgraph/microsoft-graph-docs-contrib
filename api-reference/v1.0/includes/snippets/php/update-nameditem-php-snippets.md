---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookNamedItem();
$requestBody->setType('type-value');

$requestBody->setScope('scope-value');

$requestBody->setComment('comment-value');

$value = new Json();

$requestBody->setValue($value);
$requestBody->setVisible(true);



$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->names()->byWorkbookNamedItemId('workbookNamedItem-id')->patch($requestBody);


```