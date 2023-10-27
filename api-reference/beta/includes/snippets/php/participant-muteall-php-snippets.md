---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MuteAllPostRequestBody();
$requestBody->setParticipants(['', 	]);
$requestBody->setClientContext('clientContext-value');

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->participants()->muteAll()->post($requestBody)->wait();

```