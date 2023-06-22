---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AddPostRequestBody();
$index = new Index();

$requestBody->setIndex($index);
$valuesJson1 = new Json();

$valuesArray []= $valuesJson1;
$requestBody->setValues($valuesArray);




$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->tablesById('workbookTable-id')->columns()->add()->post($requestBody);


```