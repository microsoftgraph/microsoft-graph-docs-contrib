---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Presence\SetPresence\SetPresencePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetPresencePostRequestBody();
$requestBody->setSessionId('22553876-f5ab-4529-bffb-cfe50aa89f87');
$requestBody->setAvailability('Available');
$requestBody->setActivity('Available');
$requestBody->setExpirationDuration(new \DateInterval('PT1H'));

$graphServiceClient->users()->byUserId('user-id')->presence()->setPresence()->post($requestBody)->wait();

```