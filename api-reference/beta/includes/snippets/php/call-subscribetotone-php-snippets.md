---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SubscribeToTonePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SubscribeToTonePostRequestBody();
$requestBody->setClientContext('fd1c7836-4d84-4e24-b6aa-23188688cc54');

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->subscribeToTone()->post($requestBody)->wait();

```