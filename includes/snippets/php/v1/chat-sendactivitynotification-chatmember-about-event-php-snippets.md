---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendActivityNotificationPostRequestBody();
$topic = new TeamworkActivityTopic();
$topic->setSource(new TeamworkActivityTopicSource('text'));

$topic->setValue('Weekly Virtual Social');

$topic->setWebUrl('Teams webUrl');


$requestBody->setTopic($topic);
$previewText = new ItemBody();
$previewText->setContent('It will be fun!');


$requestBody->setPreviewText($previewText);
$requestBody->setActivityType('eventCreated');

$recipient = new ChatMembersNotificationRecipient();
$recipient->setOdataType('microsoft.graph.chatMembersNotificationRecipient');

$recipient->setChatId('19:d65713bc498c4a428c71ef9353e6ce20@thread.v2');


$requestBody->setRecipient($recipient);


$graphServiceClient->chats()->byChatId('chat-id')->sendActivityNotification()->post($requestBody);


```