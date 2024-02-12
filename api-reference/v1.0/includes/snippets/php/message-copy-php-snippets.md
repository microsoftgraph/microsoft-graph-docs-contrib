---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopyPostRequestBody();
$requestBody->setDestinationId('destinationId-value');

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->copy()->post($requestBody)->wait();

```