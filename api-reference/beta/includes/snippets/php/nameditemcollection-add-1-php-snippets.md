---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AddPostRequestBody();
$requestBody->setName('test5');

$requestBody->setReference('=Sheet1!$F$15:$N$27');

$requestBody->setComment('Comment for the named item');



$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->names()->add()->post($requestBody);


```