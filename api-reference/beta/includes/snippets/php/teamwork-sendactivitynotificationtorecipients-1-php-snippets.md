---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendActivityNotificationToRecipientsPostRequestBody();
$topic = new TeamworkActivityTopic();
$topic->setSource(new TeamworkActivityTopicSource('entityUrl'));

$topic->setValue('https://graph.microsoft.com/beta/appCatalogs/teamsApps/{teamsAppId}');


$requestBody->setTopic($topic);
$requestBody->setActivityType('pendingFinanceApprovalRequests');

$previewText = new ItemBody();
$previewText->setContent('Internal spending team has a pending finance approval requests');


$requestBody->setPreviewText($previewText);
$recipientsTeamworkNotificationRecipient1 = new AadUserNotificationRecipient();
$recipientsTeamworkNotificationRecipient1->setOdataType('microsoft.graph.aadUserNotificationRecipient');

$recipientsTeamworkNotificationRecipient1->setUserId('569363e2-4e49-4661-87f2-16f245c5d66a');


$recipientsArray []= $recipientsTeamworkNotificationRecipient1;
$recipientsTeamworkNotificationRecipient2 = new AadUserNotificationRecipient();
$recipientsTeamworkNotificationRecipient2->setOdataType('microsoft.graph.aadUserNotificationRecipient');

$recipientsTeamworkNotificationRecipient2->setUserId('ab88234e-0874-477c-9638-d144296ed04f');


$recipientsArray []= $recipientsTeamworkNotificationRecipient2;
$recipientsTeamworkNotificationRecipient3 = new AadUserNotificationRecipient();
$recipientsTeamworkNotificationRecipient3->setOdataType('microsoft.graph.aadUserNotificationRecipient');

$recipientsTeamworkNotificationRecipient3->setUserId('01c64f53-69aa-42c7-9b7f-9f75195d6bfc');


$recipientsArray []= $recipientsTeamworkNotificationRecipient3;
$requestBody->setRecipients($recipientsArray);


$templateParametersKeyValuePair1 = new KeyValuePair();
$templateParametersKeyValuePair1->setName('pendingRequestCount');

$templateParametersKeyValuePair1->setValue('5');


$templateParametersArray []= $templateParametersKeyValuePair1;
$requestBody->setTemplateParameters($templateParametersArray);




$graphServiceClient->teamwork()->sendActivityNotificationToRecipients()->post($requestBody);


```