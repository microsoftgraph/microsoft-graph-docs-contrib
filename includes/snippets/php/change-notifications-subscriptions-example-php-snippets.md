---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Subscription();
$requestBody->setChangeType('created,updated');

$requestBody->setNotificationUrl('https://webhook.azurewebsites.net/notificationClient');

$requestBody->setResource('/me/mailfolders(\'inbox\')/messages');

$requestBody->setExpirationDateTime(new DateTime('2016-03-20T11:00:00.0000000Z'));

$requestBody->setClientState('SecretClientState');



$result = $graphServiceClient->subscriptions()->post($requestBody);


```