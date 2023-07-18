---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookTableColumn();
$requestBody->setId('99');

$requestBody->setName('name-value');

$requestBody->setIndex(99);

$requestBody->setValues('values-value');



$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->tables()->byWorkbookTableId('workbookTable-id')->columns()->post($requestBody);


```