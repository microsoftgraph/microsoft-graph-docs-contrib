---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ChatMessage;
use Microsoft\Graph\Generated\Models\ChatMessageFromIdentitySet;
use Microsoft\Graph\Generated\Models\Identity;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\ChatMessageAttachment;
use Microsoft\Graph\Generated\Models\ChatMessageMention;
use Microsoft\Graph\Generated\Models\ChatMessageReaction;
use Microsoft\Graph\Generated\Models\ChatMessageHistoryItem;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChatMessage();
$requestBody->setMessageType(new ChatMessageType('message'));
$requestBody->setSubject(null);
$requestBody->setSummary(null);
$requestBody->setImportance(new ChatMessageImportance('normal'));
$requestBody->setLocale('en-us');
$from = new ChatMessageFromIdentitySet();
$from->setApplication(null);
$from->setDevice(null);
$fromUser = new Identity();
$fromUser->setId('3b102402-813e-4e17-a6b2-f841aef1fdfc');
$fromUser->setDisplayName('Lam Cong');
$additionalData = [
	'userIdentityType' => 'aadUser',
];
$fromUser->setAdditionalData($additionalData);
$from->setUser($fromUser);
$additionalData = [
	'conversation' => null,
];
$from->setAdditionalData($additionalData);
$requestBody->setFrom($from);
$body = new ItemBody();
$body->setContentType(new BodyType('text'));
$body->setContent('Edit text only');
$requestBody->setBody($body);
$requestBody->setAttachments([	]);
$requestBody->setMentions([	]);
$requestBody->setReactions([	]);
$requestBody->setMessageHistory([	]);

$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->messages()->byChatMessageId('chatMessage-id')->patch($requestBody)->wait();

```