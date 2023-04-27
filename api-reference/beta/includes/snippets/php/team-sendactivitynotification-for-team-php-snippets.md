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

$topic->setValue('https://graph.microsoft.com/beta/teams/{teamId}');


$requestBody->setTopic($topic);
$requestBody->setActivityType('pendingFinanceApprovalRequests');

$previewText = new ItemBody();
$previewText->setContent('Internal spending team has a pending finance approval requests');


$requestBody->setPreviewText($previewText);
$recipient = new TeamworkNotificationRecipient();
$recipient->set@odatatype('microsoft.graph.aadUserNotificationRecipient');

$additionalData = [
		'userId' => '569363e2-4e49-4661-87f2-16f245c5d66a', 
];
$recipient->setAdditionalData($additionalData);



$requestBody->setRecipient($recipient);
$templateParametersKeyValuePair1 = new KeyValuePair();
$templateParametersKeyValuePair1->setName('pendingRequestCount');

$templateParametersKeyValuePair1->setValue('5');


$templateParametersArray []= $templateParametersKeyValuePair1;
$requestBody->setTemplateParameters($templateParametersArray);




$graphServiceClient->teamsById('team-id')->sendActivityNotification()->post($requestBody);


```