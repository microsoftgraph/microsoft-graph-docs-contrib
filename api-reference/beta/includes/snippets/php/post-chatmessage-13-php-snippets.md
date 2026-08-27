---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ChatMessage;
use Microsoft\Graph\Beta\Generated\Models\ChatMessageBody;
use Microsoft\Graph\Beta\Generated\Models\ChatMessageBodyContentType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChatMessage();
$body = new ChatMessageBody();
$body->setMessageBodyContentType(new ChatMessageBodyContentType('html'));
$body->setContent('<emoji alt=\"😶‍🌫️\"></emoji>');
$requestBody->setBody($body);

$result = $graphServiceClient->chats()->byChatId('chat-id')->messages()->post($requestBody)->wait();

```