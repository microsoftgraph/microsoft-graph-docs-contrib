---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ChatMessage();
$body = new ItemBody();
$body->setContentType(new BodyType('html'));

$body->setContent('<div><div><at id=\"0\">GraphTesting</at>&nbsp;Hello team</div></div>');


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



$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messages()->post($requestBody);


```