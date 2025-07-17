---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Teamwork\SendActivityNotificationToRecipients\SendActivityNotificationToRecipientsPostRequestBody;
use Microsoft\Graph\Generated\Models\TeamworkActivityTopic;
use Microsoft\Graph\Generated\Models\TeamworkActivityTopicSource;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\KeyValuePair;
use Microsoft\Graph\Generated\Models\TeamworkNotificationRecipient;
use Microsoft\Graph\Generated\Models\AadUserNotificationRecipient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendActivityNotificationToRecipientsPostRequestBody();
$topic = new TeamworkActivityTopic();
$topic->setSource(new TeamworkActivityTopicSource('text'));
$topic->setValue('Deployment Approvals Channel');
$topic->setWebUrl('https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000');
$requestBody->setTopic($topic);
$requestBody->setActivityType('announcementPosted');
$previewText = new ItemBody();
$previewText->setContent('new announcemnet posted');
$requestBody->setPreviewText($previewText);
$templateParametersKeyValuePair1 = new KeyValuePair();
$templateParametersKeyValuePair1->setName('deploymentId');
$templateParametersKeyValuePair1->setValue('6788662');
$templateParametersArray []= $templateParametersKeyValuePair1;
$requestBody->setTemplateParameters($templateParametersArray);

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

$additionalData = [
'iconId' => 'announcementCreated',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->teamwork()->sendActivityNotificationToRecipients()->post($requestBody)->wait();

```