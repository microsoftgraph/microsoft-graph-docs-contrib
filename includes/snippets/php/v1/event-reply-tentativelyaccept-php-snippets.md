---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TentativelyAcceptPostRequestBody();
$requestBody->setComment('I will probably be able to make it.');
$requestBody->setSendResponse(true);

$graphServiceClient->me()->events()->byEventId('event-id')->tentativelyAccept()->post($requestBody)->wait();

```