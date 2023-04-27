---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Subscription();
$requestBody->setExpirationDateTime(new DateTime('2016-03-22T11:00:00.0000000Z'));



$result = $graphServiceClient->subscriptionsById('subscription-id')->patch($requestBody);


```