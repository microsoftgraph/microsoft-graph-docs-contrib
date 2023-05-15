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

$body->setContent('<div><div><at id=\"0\">General</at>&nbsp;Hello there!</div></div>');


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




$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messages()->post($requestBody);


```