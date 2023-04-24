---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ChatMessage();
$requestBody->setMessageType(new ChatMessageType('message'));

$requestBody->setSubject(null);

$requestBody->setSummary(null);

$requestBody->setImportance(new ChatMessageImportance('normal'));

$requestBody->setLocale('en-us');

$from = new ChatMessageFromIdentitySet();
$From->setApplication(null);

$From->setDevice(null);

$fromUser = new Identity();
$fromUser->setId('3b102402-813e-4e17-a6b2-f841aef1fdfc');

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
$body->setContentType(new BodyType('text'));

$body->setContent('Edit text only');


$requestBody->setBody($body);
$requestBody->setAttachments([]);

$requestBody->setMentions([]);

$requestBody->setReactions([]);



$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messagesById('chatMessage-id')->patch($requestBody);


```