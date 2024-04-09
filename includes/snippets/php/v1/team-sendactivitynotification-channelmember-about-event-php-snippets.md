---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SendActivityNotificationPostRequestBody;
use Microsoft\Graph\Generated\Models\TeamworkActivityTopic;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\ChannelMembersNotificationRecipient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendActivityNotificationPostRequestBody();
$topic = new TeamworkActivityTopic();
$topic->setSource(new TeamworkActivityTopicSource('text'));
$topic->setValue('Weekly Virtual Social');
$topic->setWebUrl('https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000');
$requestBody->setTopic($topic);
$previewText = new ItemBody();
$previewText->setContent('It will be fun!');
$requestBody->setPreviewText($previewText);
$requestBody->setActivityType('eventCreated');
$recipient = new ChannelMembersNotificationRecipient();
$recipient->setOdataType('microsoft.graph.channelMembersNotificationRecipient');
$recipient->setTeamId('7155e3c8-175e-4311-97ef-572edc3aa3db');
$recipient->setChannelId('19:0ea5de04de4743bcb4cd20cb99235d99@thread.tacv2');
$requestBody->setRecipient($recipient);

$graphServiceClient->teams()->byTeamId('team-id')->sendActivityNotification()->post($requestBody)->wait();

```