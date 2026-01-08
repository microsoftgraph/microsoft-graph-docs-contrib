---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teams\Item\Channels\Item\Messages\Item\Replies\ForwardToChat\ForwardToChatPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ChatMessage;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForwardToChatPostRequestBody();
$requestBody->setTargetChatIds(['19:e2ed97baac8e4bffbb91299a38996790@thread.v2', 	]);
$requestBody->setMessageIds(['1728088338580', 	]);
$additionalMessage = new ChatMessage();
$additionalMessageBody = new ItemBody();
$additionalMessageBody->setContent('Hello World');
$additionalMessage->setBody($additionalMessageBody);
$requestBody->setAdditionalMessage($additionalMessage);

$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->messages()->byChatMessageId('chatMessage-id')->replies()->forwardToChat()->post($requestBody)->wait();

```