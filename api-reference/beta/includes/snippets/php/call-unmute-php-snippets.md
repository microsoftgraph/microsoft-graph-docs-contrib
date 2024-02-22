---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnmutePostRequestBody();
$requestBody->setClientContext('clientContext-value');

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->unmute()->post($requestBody)->wait();

```