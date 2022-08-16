---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SetPresencePostRequestBody();
$requestBody->setSessionId('22553876-f5ab-4529-bffb-cfe50aa89f87');

$requestBody->setAvailability('Available');

$requestBody->setActivity('Available');

$requestBody->setExpirationDuration('PT1H');



$graphServiceClient->usersById('user-id')->presence()->setPresence()->post($requestBody);


```