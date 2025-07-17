---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Chats\Item\SendActivityNotification\SendActivityNotificationPostRequestBody;
use Microsoft\Graph\Generated\Models\TeamworkActivityTopic;
use Microsoft\Graph\Generated\Models\TeamworkActivityTopicSource;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\ChatMembersNotificationRecipient;
use Microsoft\Graph\Generated\Models\KeyValuePair;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendActivityNotificationPostRequestBody();
$topic = new TeamworkActivityTopic();
$topic->setSource(new TeamworkActivityTopicSource('entityUrl'));
$topic->setValue('https://graph.microsoft.com/v1.0/chats/19:1c3af46e9e0f4a5293343c8813c47619@thread.v2');
$requestBody->setTopic($topic);
$requestBody->setActivityType('taskCreated');
$previewText = new ItemBody();
$previewText->setContent('new task created');
$requestBody->setPreviewText($previewText);
$recipient = new ChatMembersNotificationRecipient();
$recipient->setOdataType('microsoft.graph.chatMembersNotificationRecipient');
$recipient->setChatId('19:1c3af46e9e0f4a5293343c8813c47619@thread.v2');
$requestBody->setRecipient($recipient);
$templateParametersKeyValuePair1 = new KeyValuePair();
$templateParametersKeyValuePair1->setName('taskId');
$templateParametersKeyValuePair1->setValue('Task 12322');
$templateParametersArray []= $templateParametersKeyValuePair1;
$requestBody->setTemplateParameters($templateParametersArray);

$additionalData = [
'iconId' => 'taskCreatedIcon',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->chats()->byChatId('chat-id')->sendActivityNotification()->post($requestBody)->wait();

```