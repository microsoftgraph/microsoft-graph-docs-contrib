---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SendActivityNotificationPostRequestBody();
$topic = new TeamworkActivityTopic();
$topic->setSource(new TeamworkActivityTopicSource('entityurl'));

$topic->setValue('https://graph.microsoft.com/beta/chats/{chatId}/messages/{messageId}');


$requestBody->setTopic($topic);
$requestBody->setActivityType('approvalRequired');

$previewText = new ItemBody();
$previewText->setContent('Deployment requires your approval');


$requestBody->setPreviewText($previewText);
$recipient = new TeamworkNotificationRecipient();
$recipient->set@odatatype('microsoft.graph.aadUserNotificationRecipient');

$additionalData = [
		'userId' => 'jacob@contoso.com', 
];
$recipient->setAdditionalData($additionalData);



$requestBody->setRecipient($recipient);
$templateParametersKeyValuePair1 = new KeyValuePair();
$templateParametersKeyValuePair1->setName('approvalTaskId');

$templateParametersKeyValuePair1->setValue('2020AAGGTAPP');


$templateParametersArray []= $templateParametersKeyValuePair1;
$requestBody->setTemplateParameters($templateParametersArray);




$graphServiceClient->chatsById('chat-id')->sendActivityNotification()->post($requestBody);


```