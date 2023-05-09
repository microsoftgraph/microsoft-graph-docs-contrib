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

$topic->setValue('https://graph.microsoft.com/beta/teams/{teamId}/channels/{channelId}/tabs/{tabId}');


$requestBody->setTopic($topic);
$requestBody->setActivityType('reservationUpdated');

$previewText = new ItemBody();
$previewText->setContent('You have moved up the queue');


$requestBody->setPreviewText($previewText);
$recipient = new TeamworkNotificationRecipient();
$recipient->set@odatatype('microsoft.graph.aadUserNotificationRecipient');

$additionalData = [
		'userId' => 'jacob@contoso.com', 
];
$recipient->setAdditionalData($additionalData);



$requestBody->setRecipient($recipient);
$templateParametersKeyValuePair1 = new KeyValuePair();
$templateParametersKeyValuePair1->setName('reservationId');

$templateParametersKeyValuePair1->setValue('TREEE433');


$templateParametersArray []= $templateParametersKeyValuePair1;
$templateParametersKeyValuePair2 = new KeyValuePair();
$templateParametersKeyValuePair2->setName('currentSlot');

$templateParametersKeyValuePair2->setValue('23');


$templateParametersArray []= $templateParametersKeyValuePair2;
$requestBody->setTemplateParameters($templateParametersArray);




$graphServiceClient->teamsById('team-id')->sendActivityNotification()->post($requestBody);


```