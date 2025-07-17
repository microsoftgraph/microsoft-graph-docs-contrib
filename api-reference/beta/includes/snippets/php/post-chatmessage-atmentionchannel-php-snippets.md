---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ChatMessage;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;
use Microsoft\Graph\Beta\Generated\Models\ChatMessageMention;
use Microsoft\Graph\Beta\Generated\Models\ChatMessageMentionedIdentitySet;
use Microsoft\Graph\Beta\Generated\Models\TeamworkConversationIdentity;
use Microsoft\Graph\Beta\Generated\Models\TeamworkConversationIdentityType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChatMessage();
$body = new ItemBody();
$body->setContentType(new BodyType('html'));
$body->setContent('<at id=\"0\">General</at>&nbsp;Hello there!');
$requestBody->setBody($body);
$mentionsChatMessageMention1 = new ChatMessageMention();
$mentionsChatMessageMention1->setId(0);
$mentionsChatMessageMention1->setMentionText('General');
$mentionsChatMessageMention1Mentioned = new ChatMessageMentionedIdentitySet();
$mentionsChatMessageMention1MentionedConversation = new TeamworkConversationIdentity();
$mentionsChatMessageMention1MentionedConversation->setId('19:0b50940236084d258c97b21bd01917b0@thread.skype');
$mentionsChatMessageMention1MentionedConversation->setDisplayName('General');
$mentionsChatMessageMention1MentionedConversation->setConversationIdentityType(new TeamworkConversationIdentityType('channel'));
$mentionsChatMessageMention1Mentioned->setConversation($mentionsChatMessageMention1MentionedConversation);
$mentionsChatMessageMention1->setMentioned($mentionsChatMessageMention1Mentioned);
$mentionsArray []= $mentionsChatMessageMention1;
$requestBody->setMentions($mentionsArray);


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->messages()->post($requestBody)->wait();

```