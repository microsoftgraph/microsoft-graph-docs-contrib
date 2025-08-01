---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Chats\Item\Messages\ReplyWithQuote\ReplyWithQuotePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ChatMessage;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReplyWithQuotePostRequestBody();
$requestBody->setMessageIds(['1728088338580', 	]);
$replyMessage = new ChatMessage();
$replyMessageBody = new ItemBody();
$replyMessageBody->setContent('Hello World');
$replyMessage->setBody($replyMessageBody);
$requestBody->setReplyMessage($replyMessage);

$result = $graphServiceClient->chats()->byChatId('chat-id')->messages()->replyWithQuote()->post($requestBody)->wait();

```