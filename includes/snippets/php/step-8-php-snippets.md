---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Subscription();
$requestBody->setExpirationDateTime(new DateTime('2023-01-12T18:23:45.9356913Z'));



$result = $graphServiceClient->subscriptionsById('subscription-id')->patch($requestBody);


```