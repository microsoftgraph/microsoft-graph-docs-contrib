---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AcceptPostRequestBody();
$requestBody->setComment('comment-value');
$requestBody->setSendResponse(true);

$graphServiceClient->me()->events()->byEventId('event-id')->accept()->post($requestBody)->wait();

```