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

$topic->setValue('Deployment Approvals Channel');

$topic->setWebUrl('https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000');


$requestBody->setTopic($topic);
$requestBody->setActivityType('approvalRequired');

$previewText = new ItemBody();
$previewText->setContent('New deployment requires your approval');


$requestBody->setPreviewText($previewText);
$recipient = new TeamworkNotificationRecipient();
$recipient->set@odatatype('microsoft.graph.aadUserNotificationRecipient');

$additionalData = [
		'userId' => '569363e2-4e49-4661-87f2-16f245c5d66a', 
];
$recipient->setAdditionalData($additionalData);



$requestBody->setRecipient($recipient);
$templateParametersKeyValuePair1 = new KeyValuePair();
$templateParametersKeyValuePair1->setName('deploymentId');

$templateParametersKeyValuePair1->setValue('6788662');


$templateParametersArray []= $templateParametersKeyValuePair1;
$requestBody->setTemplateParameters($templateParametersArray);




$graphServiceClient->teamsById('team-id')->sendActivityNotification()->post($requestBody);


```