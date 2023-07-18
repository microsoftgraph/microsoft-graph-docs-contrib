---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetUserPreferredPresencePostRequestBody();
$requestBody->setAvailability('DoNotDisturb');

$requestBody->setActivity('DoNotDisturb');

$requestBody->setExpirationDuration(new \DateInterval('PT8H'));



$graphServiceClient->users()->byUserId('user-id')->presence()->setUserPreferredPresence()->post($requestBody);


```