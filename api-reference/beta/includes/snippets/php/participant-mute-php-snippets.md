---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MutePostRequestBody();
$requestBody->setClientContext('d45324c1-fcb5-430a-902c-f20af696537c');

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->participants()->byParticipantId('participant-id')->mute()->post($requestBody)->wait();

```