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

$fromUser->setDisplayName('Sumit Gupta');

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

$body->setContent('<p><em>text</em></p><attachment id=\"e8f78756199240b88448ae0fc6db112d\"></attachment><attachment id=\"638464e32834471ea202007da60a5ae6\"></attachment>');


$requestBody->setBody($body);
$attachmentsChatMessageAttachment1 = new ChatMessageAttachment();
$attachmentsChatMessageAttachment1->setId('e8f78756199240b88448ae0fc6db112d');

$attachmentsChatMessageAttachment1->setContentType('application/vnd.microsoft.card.hero');

$attachmentsChatMessageAttachment1->setContentUrl(null);

$attachmentsChatMessageAttachment1->setContent('{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you\'re cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"image\": \"https://urlp.asm.skype.com/v1/url/content?url=https%3a%2f%2fcdn2.iconfinder.com%2fdata%2ficons%2fsocial-icons-33%2f128%2fTrello-128.png\",\r\n      \"title\": \"😃😃 click me 😃😃\",\r\n      \"value\": \"http://microsoft.com\"\r\n    },\r\n    {\r\n      \"type\": \"imback\",\r\n      \"title\": \"&i am back& <>= \\"\",\r\n      \"value\": \"&i am back& <>= \\"\"\r\n    },\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"title\": \"Open URL\",\r\n      \"value\": \"http://google.com\"\r\n    }\r\n  ]\r\n}');

$attachmentsChatMessageAttachment1->setName(null);

$attachmentsChatMessageAttachment1->setThumbnailUrl(null);


$attachmentsArray []= $attachmentsChatMessageAttachment1;
$attachmentsChatMessageAttachment2 = new ChatMessageAttachment();
$attachmentsChatMessageAttachment2->setId('638464e32834471ea202007da60a5ae6');

$attachmentsChatMessageAttachment2->setContentType('application/vnd.microsoft.card.hero');

$attachmentsChatMessageAttachment2->setContentUrl(null);

$attachmentsChatMessageAttachment2->setContent('{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you\'re cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"&message back& <>= \\"\",\r\n      \"text\": \"text = &message back& <>= \\"\",\r\n      \"displayText\": \"displayText = &message back& <>= \\"\",\r\n      \"value\": {\r\n        \"text\": \"some text 2\"\r\n      }\r\n    }\r\n  ]\r\n}');

$attachmentsChatMessageAttachment2->setName(null);

$attachmentsChatMessageAttachment2->setThumbnailUrl(null);


$attachmentsArray []= $attachmentsChatMessageAttachment2;
$requestBody->setAttachments($attachmentsArray);


$requestBody->setMentions([]);

$requestBody->setReactions([]);

$requestBody->setMessageHistory([]);



$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messagesById('chatMessage-id')->patch($requestBody);


```