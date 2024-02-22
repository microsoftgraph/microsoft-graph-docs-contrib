---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ClearPresencePostRequestBody();
$requestBody->setSessionId('22553876-f5ab-4529-bffb-cfe50aa89f87');

$graphServiceClient->users()->byUserId('user-id')->presence()->clearPresence()->post($requestBody)->wait();

```