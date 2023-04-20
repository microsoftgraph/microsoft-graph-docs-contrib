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

$reactionsChatMessageReaction1 = new ChatMessageReaction();
$reactionsChatMessageReaction1->setReactionType('angry');

$reactionsChatMessageReaction1->setCreatedDateTime(new DateTime('2018-10-21T08:10:30.489Z'));

$reactionsChatMessageReaction1User = new ChatMessageReactionIdentitySet();
$reactionsChatMessageReaction1User->setApplication(null);

$reactionsChatMessageReaction1User->setDevice(null);

$reactionsChatMessageReaction1UserUser = new Identity();
$reactionsChatMessageReaction1UserUser->setId('f1b66449-b46d-49b0-9c3c-53c10a5c818e');

$reactionsChatMessageReaction1UserUser->setDisplayName(null);

$additionalData = [
'userIdentityType' => 'aadUser', 
];
$reactionsChatMessageReaction1UserUser->setAdditionalData($additionalData);



$reactionsChatMessageReaction1User->setUser($reactionsChatMessageReaction1UserUser);

$reactionsChatMessageReaction1->setUser($reactionsChatMessageReaction1User);

$reactionsArray []= $reactionsChatMessageReaction1;
$reactionsChatMessageReaction2 = new ChatMessageReaction();
$reactionsChatMessageReaction2->setReactionType('laugh');

$reactionsChatMessageReaction2->setCreatedDateTime(new DateTime('2018-10-21T08:10:32.489Z'));

$reactionsChatMessageReaction2User = new ChatMessageReactionIdentitySet();
$reactionsChatMessageReaction2User->setApplication(null);

$reactionsChatMessageReaction2User->setDevice(null);

$reactionsChatMessageReaction2UserUser = new Identity();
$reactionsChatMessageReaction2UserUser->setId('03a02232-d8f5-4970-a77e-6e8c76ce7a4e');

$reactionsChatMessageReaction2UserUser->setDisplayName(null);

$additionalData = [
'userIdentityType' => 'aadUser', 
];
$reactionsChatMessageReaction2UserUser->setAdditionalData($additionalData);



$reactionsChatMessageReaction2User->setUser($reactionsChatMessageReaction2UserUser);

$reactionsChatMessageReaction2->setUser($reactionsChatMessageReaction2User);

$reactionsArray []= $reactionsChatMessageReaction2;
$reactionsChatMessageReaction3 = new ChatMessageReaction();
$reactionsChatMessageReaction3->setReactionType('like');

$reactionsChatMessageReaction3->setCreatedDateTime(new DateTime('2018-10-21T02:17:14.67Z'));

$reactionsChatMessageReaction3User = new ChatMessageReactionIdentitySet();
$reactionsChatMessageReaction3User->setApplication(null);

$reactionsChatMessageReaction3User->setDevice(null);

$reactionsChatMessageReaction3UserUser = new Identity();
$reactionsChatMessageReaction3UserUser->setId('f1b66449-b46d-49b0-9c3c-53c10a5c818e');

$reactionsChatMessageReaction3UserUser->setDisplayName(null);

$additionalData = [
'userIdentityType' => 'aadUser', 
];
$reactionsChatMessageReaction3UserUser->setAdditionalData($additionalData);



$reactionsChatMessageReaction3User->setUser($reactionsChatMessageReaction3UserUser);

$reactionsChatMessageReaction3->setUser($reactionsChatMessageReaction3User);

$reactionsArray []= $reactionsChatMessageReaction3;
$reactionsChatMessageReaction4 = new ChatMessageReaction();
$reactionsChatMessageReaction4->setReactionType('like');

$reactionsChatMessageReaction4->setCreatedDateTime(new DateTime('2018-10-21T02:34:40.3Z'));

$reactionsChatMessageReaction4User = new ChatMessageReactionIdentitySet();
$reactionsChatMessageReaction4User->setApplication(null);

$reactionsChatMessageReaction4User->setDevice(null);

$reactionsChatMessageReaction4UserUser = new Identity();
$reactionsChatMessageReaction4UserUser->setId('4c9041b7-449a-40f7-8855-56da239b9fd1');

$reactionsChatMessageReaction4UserUser->setDisplayName(null);

$additionalData = [
'userIdentityType' => 'aadUser', 
];
$reactionsChatMessageReaction4UserUser->setAdditionalData($additionalData);



$reactionsChatMessageReaction4User->setUser($reactionsChatMessageReaction4UserUser);

$reactionsChatMessageReaction4->setUser($reactionsChatMessageReaction4User);

$reactionsArray []= $reactionsChatMessageReaction4;
$reactionsChatMessageReaction5 = new ChatMessageReaction();
$reactionsChatMessageReaction5->setReactionType('like');

$reactionsChatMessageReaction5->setCreatedDateTime(new DateTime('2018-10-21T08:10:25.489Z'));

$reactionsChatMessageReaction5User = new ChatMessageReactionIdentitySet();
$reactionsChatMessageReaction5User->setApplication(null);

$reactionsChatMessageReaction5User->setDevice(null);

$reactionsChatMessageReaction5UserUser = new Identity();
$reactionsChatMessageReaction5UserUser->setId('03a02232-d8f5-4970-a77e-6e8c76ce7a4e');

$reactionsChatMessageReaction5UserUser->setDisplayName(null);

$additionalData = [
'userIdentityType' => 'aadUser', 
];
$reactionsChatMessageReaction5UserUser->setAdditionalData($additionalData);



$reactionsChatMessageReaction5User->setUser($reactionsChatMessageReaction5UserUser);

$reactionsChatMessageReaction5->setUser($reactionsChatMessageReaction5User);

$reactionsArray []= $reactionsChatMessageReaction5;
$reactionsChatMessageReaction6 = new ChatMessageReaction();
$reactionsChatMessageReaction6->setReactionType('heart');

$reactionsChatMessageReaction6->setCreatedDateTime(new DateTime('2018-10-21T08:10:31.489Z'));

$reactionsChatMessageReaction6User = new ChatMessageReactionIdentitySet();
$reactionsChatMessageReaction6User->setApplication(null);

$reactionsChatMessageReaction6User->setDevice(null);

$reactionsChatMessageReaction6UserUser = new Identity();
$reactionsChatMessageReaction6UserUser->setId('03a02232-d8f5-4970-a77e-6e8c76ce7a4e');

$reactionsChatMessageReaction6UserUser->setDisplayName(null);

$additionalData = [
'userIdentityType' => 'aadUser', 
];
$reactionsChatMessageReaction6UserUser->setAdditionalData($additionalData);



$reactionsChatMessageReaction6User->setUser($reactionsChatMessageReaction6UserUser);

$reactionsChatMessageReaction6->setUser($reactionsChatMessageReaction6User);

$reactionsArray []= $reactionsChatMessageReaction6;
$reactionsChatMessageReaction7 = new ChatMessageReaction();
$reactionsChatMessageReaction7->setReactionType('sad');

$reactionsChatMessageReaction7->setCreatedDateTime(new DateTime('2018-10-21T08:10:33.489Z'));

$reactionsChatMessageReaction7User = new ChatMessageReactionIdentitySet();
$reactionsChatMessageReaction7User->setApplication(null);

$reactionsChatMessageReaction7User->setDevice(null);

$reactionsChatMessageReaction7UserUser = new Identity();
$reactionsChatMessageReaction7UserUser->setId('03a02232-d8f5-4970-a77e-6e8c76ce7a4e');

$reactionsChatMessageReaction7UserUser->setDisplayName(null);

$additionalData = [
'userIdentityType' => 'aadUser', 
];
$reactionsChatMessageReaction7UserUser->setAdditionalData($additionalData);



$reactionsChatMessageReaction7User->setUser($reactionsChatMessageReaction7UserUser);

$reactionsChatMessageReaction7->setUser($reactionsChatMessageReaction7User);

$reactionsArray []= $reactionsChatMessageReaction7;
$reactionsChatMessageReaction8 = new ChatMessageReaction();
$reactionsChatMessageReaction8->setReactionType('surprised');

$reactionsChatMessageReaction8->setCreatedDateTime(new DateTime('2018-10-21T08:10:34.489Z'));

$reactionsChatMessageReaction8User = new ChatMessageReactionIdentitySet();
$reactionsChatMessageReaction8User->setApplication(null);

$reactionsChatMessageReaction8User->setDevice(null);

$reactionsChatMessageReaction8UserUser = new Identity();
$reactionsChatMessageReaction8UserUser->setId('03a02232-d8f5-4970-a77e-6e8c76ce7a4e');

$reactionsChatMessageReaction8UserUser->setDisplayName(null);

$additionalData = [
'userIdentityType' => 'aadUser', 
];
$reactionsChatMessageReaction8UserUser->setAdditionalData($additionalData);



$reactionsChatMessageReaction8User->setUser($reactionsChatMessageReaction8UserUser);

$reactionsChatMessageReaction8->setUser($reactionsChatMessageReaction8User);

$reactionsArray []= $reactionsChatMessageReaction8;
$requestBody->setReactions($reactionsArray);




$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messagesById('chatMessage-id')->patch($requestBody);


```