---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Message();
$requestBody->setIsRead(true);

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->patch($requestBody)->wait();

```