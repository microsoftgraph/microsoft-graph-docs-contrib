---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MarkAsJunkPostRequestBody();
$requestBody->setMoveToJunk(true);

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->markAsJunk()->post($requestBody)->wait();

```