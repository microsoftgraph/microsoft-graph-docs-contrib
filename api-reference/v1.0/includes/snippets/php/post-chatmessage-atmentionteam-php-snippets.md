---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ChatMessage;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\BodyType;
use Microsoft\Graph\Generated\Models\ChatMessageMention;
use Microsoft\Graph\Generated\Models\ChatMessageMentionedIdentitySet;
use Microsoft\Graph\Generated\Models\TeamworkConversationIdentity;
use Microsoft\Graph\Generated\Models\TeamworkConversationIdentityType;
use Microsoft\Graph\Generated\Models\ChatMessageReaction;
use Microsoft\Graph\Generated\Models\ChatMessageHistoryItem;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChatMessage();
$body = new ItemBody();
$body->setContentType(new BodyType('html'));
$body->setContent('<at id=\"0\">GraphTesting</at>&nbsp;Hello team');
$requestBody->setBody($body);
$mentionsChatMessageMention1 = new ChatMessageMention();
$mentionsChatMessageMention1->setId(0);
$mentionsChatMessageMention1->setMentionText('GraphTesting');
$mentionsChatMessageMention1Mentioned = new ChatMessageMentionedIdentitySet();
$mentionsChatMessageMention1MentionedConversation = new TeamworkConversationIdentity();
$mentionsChatMessageMention1MentionedConversation->setId('68a3e365-f7d9-4a56-b499-24332a9cc572');
$mentionsChatMessageMention1MentionedConversation->setDisplayName('GraphTesting');
$mentionsChatMessageMention1MentionedConversation->setConversationIdentityType(new TeamworkConversationIdentityType('team'));
$mentionsChatMessageMention1Mentioned->setConversation($mentionsChatMessageMention1MentionedConversation);
$mentionsChatMessageMention1->setMentioned($mentionsChatMessageMention1Mentioned);
$mentionsArray []= $mentionsChatMessageMention1;
$requestBody->setMentions($mentionsArray);

$requestBody->setReactions([]);
$requestBody->setMessageHistory([]);

$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->messages()->post($requestBody)->wait();

```