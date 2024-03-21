---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SubscribeToTonePostRequestBody();
$requestBody->setClientContext('fd1c7836-4d84-4e24-b6aa-23188688cc54');

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->subscribeToTone()->post($requestBody)->wait();

```