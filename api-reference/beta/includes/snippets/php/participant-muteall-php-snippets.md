---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MuteAllPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MuteAllPostRequestBody();
$requestBody->setParticipants(['', 	]);
$requestBody->setClientContext('clientContext-value');

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->participants()->muteAll()->post($requestBody)->wait();

```