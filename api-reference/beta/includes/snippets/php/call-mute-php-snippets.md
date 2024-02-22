---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MutePostRequestBody();
$requestBody->setClientContext('clientContext-value');

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->mute()->post($requestBody)->wait();

```