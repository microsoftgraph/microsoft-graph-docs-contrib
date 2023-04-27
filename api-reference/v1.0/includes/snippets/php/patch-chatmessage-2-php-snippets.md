---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ChatMessage();
$requestBody->setMessageType(new ChatMessageType('message'));

$requestBody->setDeletedDateTime(null);

$requestBody->setSubject(null);

$requestBody->setSummary(null);

$requestBody->setImportance(new ChatMessageImportance('normal'));

$requestBody->setLocale('en-us');

$from = new ChatMessageFromIdentitySet();
$From->setApplication(null);

$From->setDevice(null);

$fromUser = new Identity();
$fromUser->setId('6b3f3c54-d09c-4fdd-b146-9b514a8a4f40');

$fromUser->setDisplayName('Lam Cong');

$additionalData = [
		'userIdentityType' => 'aadUser', 
];
$fromUser->setAdditionalData($additionalData);



$from->setUser($fromUser);
$additionalData = [
		'conversation' => 		null,
];
$from->setAdditionalData($additionalData);



$requestBody->setFrom($from);
$body = new ItemBody();
$body->setContentType(new BodyType('html'));

$body->setContent('<div><div>\n<div>\n<div>\n<div>\n<div><at id=\"0\">Raghav</at><at id=\"1\">TestGlobalBot</at> YEAH');


$requestBody->setBody($body);
$requestBody->setAttachments([]);

$mentionsChatMessageMention1 = new ChatMessageMention();
$mentionsChatMessageMention1->setId(0);

$mentionsChatMessageMention1->setMentionText('Raghav');

$mentionsChatMessageMention1Mentioned = new ChatMessageMentionedIdentitySet();
$mentionsChatMessageMention1Mentioned->setApplication(null);

$mentionsChatMessageMention1Mentioned->setDevice(null);

$mentionsChatMessageMention1Mentioned->setConversation(null);

$mentionsChatMessageMention1MentionedUser = new Identity();
$mentionsChatMessageMention1MentionedUser->setId('f1b66449-b46d-49b0-9c3c-53c10234c818e');

$mentionsChatMessageMention1MentionedUser->setDisplayName('Lam Cong');

$additionalData = [
	'userIdentityType' => 'aadUser', 
];
$mentionsChatMessageMention1MentionedUser->setAdditionalData($additionalData);



$mentionsChatMessageMention1Mentioned->setUser($mentionsChatMessageMention1MentionedUser);

$mentionsChatMessageMention1->setMentioned($mentionsChatMessageMention1Mentioned);

$mentionsArray []= $mentionsChatMessageMention1;
$mentionsChatMessageMention2 = new ChatMessageMention();
$mentionsChatMessageMention2->setId(1);

$mentionsChatMessageMention2->setMentionText('TestGlobalBot');

$mentionsChatMessageMention2Mentioned = new ChatMessageMentionedIdentitySet();
$mentionsChatMessageMention2MentionedApplication = new Identity();
$mentionsChatMessageMention2MentionedApplication->setId('03a02232-d8f5-4970-a77e-6e8c76ce7a4e');

$mentionsChatMessageMention2MentionedApplication->setDisplayName('TestGlobalBot');

$additionalData = [
	'applicationIdentityType' => 'bot', 
];
$mentionsChatMessageMention2MentionedApplication->setAdditionalData($additionalData);



$mentionsChatMessageMention2Mentioned->setApplication($mentionsChatMessageMention2MentionedApplication);
$mentionsChatMessageMention2Mentioned->setDevice(null);

$mentionsChatMessageMention2Mentioned->setConversation(null);

$mentionsChatMessageMention2Mentioned->setUser(null);


$mentionsChatMessageMention2->setMentioned($mentionsChatMessageMention2Mentioned);

$mentionsArray []= $mentionsChatMessageMention2;
$requestBody->setMentions($mentionsArray);


$requestBody->setReactions([]);



$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messagesById('chatMessage-id')->patch($requestBody);


```