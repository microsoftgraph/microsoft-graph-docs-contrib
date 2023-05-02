---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TemporaryAccessPassAuthenticationMethod();
$requestBody->setStartDateTime(new DateTime('2022-06-05T00:00:00.000Z'));

$requestBody->setLifetimeInMinutes(60);

$requestBody->setIsUsableOnce(false);



$result = $graphServiceClient->usersById('user-id')->authentication()->temporaryAccessPassMethods()->post($requestBody);


```