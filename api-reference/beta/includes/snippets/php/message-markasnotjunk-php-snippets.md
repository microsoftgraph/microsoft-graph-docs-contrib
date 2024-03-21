---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MarkAsNotJunkPostRequestBody();
$requestBody->setMoveToInbox(true);

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->markAsNotJunk()->post($requestBody)->wait();

```