---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Subscription();
$requestBody->setChangeType('created,updated');

$requestBody->setNotificationUrl('https://webhook.azurewebsites.net/api/resourceNotifications');

$requestBody->setLifecycleNotificationUrl('https://webhook.azurewebsites.net/api/lifecycleNotifications');

$requestBody->setResource('/users/{id}/messages');

$requestBody->setExpirationDateTime(new \DateTime('2020-03-20T11:00:00.0000000Z'));

$requestBody->setClientState('<secretClientState>');



$result = $graphServiceClient->subscriptions()->post($requestBody);


```