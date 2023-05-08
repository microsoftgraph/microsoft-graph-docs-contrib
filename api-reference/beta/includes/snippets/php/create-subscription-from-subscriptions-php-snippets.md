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

$requestBody->setResource('me/mailFolders(\'Inbox\')/messages');

$requestBody->setExpirationDateTime(new DateTime('2016-11-20T18:23:45.9356913Z'));

$requestBody->setClientState('secretClientValue');

$requestBody->setLatestSupportedTlsVersion('v1_2');



$result = $graphServiceClient->subscriptions()->post($requestBody);


```