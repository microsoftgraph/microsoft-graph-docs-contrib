---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MovePostRequestBody();
$requestBody->setDestinationId('deleteditems');

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->move()->post($requestBody)->wait();

```