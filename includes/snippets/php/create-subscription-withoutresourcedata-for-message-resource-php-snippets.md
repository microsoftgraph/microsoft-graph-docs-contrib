---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Subscription();
$requestBody->setChangeType('created');

$requestBody->setNotificationUrl('https://webhook.azurewebsites.net/api/send/myNotifyClient');

$requestBody->setResource('users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages');

$requestBody->setExpirationDateTime(new DateTime('2021-07-07T21:42:18.2257768+00:00'));

$requestBody->setClientState('secretClientState');



$result = $graphServiceClient->subscriptions()->post($requestBody);


```