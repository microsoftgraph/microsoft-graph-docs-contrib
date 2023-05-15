---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

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

$recipient = new TeamworkNotificationRecipient();
$recipient->set@odatatype('microsoft.graph.channelMembersNotificationRecipient');

$additionalData = [
		'teamId' => '7155e3c8-175e-4311-97ef-572edc3aa3db', 
		'channelId' => '19:0ea5de04de4743bcb4cd20cb99235d99@thread.tacv2', 
];
$recipient->setAdditionalData($additionalData);



$requestBody->setRecipient($recipient);


$graphServiceClient->teamsById('team-id')->sendActivityNotification()->post($requestBody);


```