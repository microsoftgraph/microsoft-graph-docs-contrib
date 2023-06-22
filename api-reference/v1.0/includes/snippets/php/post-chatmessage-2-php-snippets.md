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

$body->setContent('Hello World <at id=\"0\">Jane Smith</at>');


$requestBody->setBody($body);
$mentionsChatMessageMention1 = new ChatMessageMention();
$mentionsChatMessageMention1->setId(0);

$mentionsChatMessageMention1->setMentionText('Jane Smith');

$mentionsChatMessageMention1Mentioned = new ChatMessageMentionedIdentitySet();
$mentionsChatMessageMention1MentionedUser = new Identity();
$mentionsChatMessageMention1MentionedUser->setDisplayName('Jane Smith');

$mentionsChatMessageMention1MentionedUser->setId('ef1c916a-3135-4417-ba27-8eb7bd084193');

$additionalData = [
		'userIdentityType' => 'aadUser', 
];
$mentionsChatMessageMention1MentionedUser->setAdditionalData($additionalData);



$mentionsChatMessageMention1Mentioned->setUser($mentionsChatMessageMention1MentionedUser);

$mentionsChatMessageMention1->setMentioned($mentionsChatMessageMention1Mentioned);

$mentionsArray []= $mentionsChatMessageMention1;
$requestBody->setMentions($mentionsArray);




$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messages()->post($requestBody);


```