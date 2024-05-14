---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ChatMessage;
use Microsoft\Graph\Generated\Models\ItemBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChatMessage();
$body = new ItemBody();
$body->setContentType(new BodyType('html'));
$body->setContent('<emoji alt=\"😶‍🌫️\"></emoji>');
$requestBody->setBody($body);

$result = $graphServiceClient->chats()->byChatId('chat-id')->messages()->post($requestBody)->wait();

```