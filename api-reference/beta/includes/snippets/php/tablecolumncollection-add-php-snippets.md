---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddPostRequestBody();
$index = new Index();

$requestBody->setIndex($index);
$valuesJson1 = new Json();

$valuesArray []= $valuesJson1;
$requestBody->setValues($valuesArray);




$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->tables()->byWorkbookTableId('workbookTable-id')->columns()->add()->post($requestBody);


```