---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendActivityNotificationPostRequestBody();
$topic = new TeamworkActivityTopic();
$topic->setSource(new TeamworkActivityTopicSource('entityUrl'));

$topic->setValue('https://graph.microsoft.com/v1.0/teams/{teamId}');


$requestBody->setTopic($topic);
$requestBody->setActivityType('pendingFinanceApprovalRequests');

$previewText = new ItemBody();
$previewText->setContent('Internal spending team has a pending finance approval requests');


$requestBody->setPreviewText($previewText);
$recipient = new AadUserNotificationRecipient();
$recipient->setOdataType('microsoft.graph.aadUserNotificationRecipient');

$recipient->setUserId('569363e2-4e49-4661-87f2-16f245c5d66a');


$requestBody->setRecipient($recipient);
$templateParametersKeyValuePair1 = new KeyValuePair();
$templateParametersKeyValuePair1->setName('pendingRequestCount');

$templateParametersKeyValuePair1->setValue('5');


$templateParametersArray []= $templateParametersKeyValuePair1;
$requestBody->setTemplateParameters($templateParametersArray);




$graphServiceClient->teams()->byTeamId('team-id')->sendActivityNotification()->post($requestBody);


```