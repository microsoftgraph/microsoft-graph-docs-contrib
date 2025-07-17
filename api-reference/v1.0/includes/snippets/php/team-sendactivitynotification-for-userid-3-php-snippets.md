---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Teamwork\SendActivityNotification\SendActivityNotificationPostRequestBody;
use Microsoft\Graph\Generated\Models\TeamworkActivityTopic;
use Microsoft\Graph\Generated\Models\TeamworkActivityTopicSource;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\KeyValuePair;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendActivityNotificationPostRequestBody();
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

$additionalData = [
'iconId' => 'announcementCreated',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->users()->byUserId('user-id')->teamwork()->sendActivityNotification()->post($requestBody)->wait();

```