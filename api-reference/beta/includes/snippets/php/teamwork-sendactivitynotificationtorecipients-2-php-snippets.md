---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SendActivityNotificationToRecipientsPostRequestBody();
$topic = new TeamworkActivityTopic();
$topic->setSource(new TeamworkActivityTopicSource('text'));

$topic->setValue('Deployment Approvals Channel');

$topic->setWebUrl('https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000');


$requestBody->setTopic($topic);
$requestBody->setActivityType('deploymentApprovalRequired');

$previewText = new ItemBody();
$previewText->setContent('New deployment requires your approval');


$requestBody->setPreviewText($previewText);
$templateParametersKeyValuePair1 = new KeyValuePair();
$templateParametersKeyValuePair1->setName('deploymentId');

$templateParametersKeyValuePair1->setValue('6788662');


$templateParametersArray []= $templateParametersKeyValuePair1;
$requestBody->setTemplateParameters($templateParametersArray);


$recipientsTeamworkNotificationRecipient1 = new TeamworkNotificationRecipient();
$recipientsTeamworkNotificationRecipient1->set@odatatype('microsoft.graph.aadUserNotificationRecipient');

$additionalData = [
	'userId' => '569363e2-4e49-4661-87f2-16f245c5d66a', 
];
$recipientsTeamworkNotificationRecipient1->setAdditionalData($additionalData);



$recipientsArray []= $recipientsTeamworkNotificationRecipient1;
$recipientsTeamworkNotificationRecipient2 = new TeamworkNotificationRecipient();
$recipientsTeamworkNotificationRecipient2->set@odatatype('microsoft.graph.aadUserNotificationRecipient');

$additionalData = [
	'userId' => 'ab88234e-0874-477c-9638-d144296ed04f', 
];
$recipientsTeamworkNotificationRecipient2->setAdditionalData($additionalData);



$recipientsArray []= $recipientsTeamworkNotificationRecipient2;
$recipientsTeamworkNotificationRecipient3 = new TeamworkNotificationRecipient();
$recipientsTeamworkNotificationRecipient3->set@odatatype('microsoft.graph.aadUserNotificationRecipient');

$additionalData = [
	'userId' => '01c64f53-69aa-42c7-9b7f-9f75195d6bfc', 
];
$recipientsTeamworkNotificationRecipient3->setAdditionalData($additionalData);



$recipientsArray []= $recipientsTeamworkNotificationRecipient3;
$requestBody->setRecipients($recipientsArray);




$graphServiceClient->teamwork()->sendActivityNotificationToRecipients()->post($requestBody);


```