---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ChatMessage;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\BodyType;
use Microsoft\Graph\Generated\Models\ChatMessageAttachment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChatMessage();
$body = new ItemBody();
$body->setContentType(new BodyType('html'));
$body->setContent('<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>');
$requestBody->setBody($body);
$attachmentsChatMessageAttachment1 = new ChatMessageAttachment();
$attachmentsChatMessageAttachment1->setId('74d20c7f34aa4a7fb74e2b30004247c5');
$attachmentsChatMessageAttachment1->setContentType('application/vnd.microsoft.card.fluidEmbedCard');
$attachmentsChatMessageAttachment1->setContent('{\"componentUrl\": \"{LoopComponent_url}\", \"sourceType\": \"Compose\"}');
$attachmentsChatMessageAttachment1->setName(null);
$attachmentsChatMessageAttachment1->setThumbnailUrl(null);
$attachmentsChatMessageAttachment1->setTeamsAppId('FluidEmbedCard');
$attachmentsArray []= $attachmentsChatMessageAttachment1;
$requestBody->setAttachments($attachmentsArray);


$result = $graphServiceClient->chats()->byChatId('chat-id')->messages()->post($requestBody)->wait();

```