---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AddPostRequestBody();
$requestBody->setAddress('Sheet1!A1:D5');

$requestBody->setHasHeaders(true);



$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->tables()->add()->post($requestBody);


```