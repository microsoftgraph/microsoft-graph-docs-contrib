---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Teams\Item\SendActivityNotification\SendActivityNotificationPostRequestBody;
use Microsoft\Graph\Generated\Models\TeamworkActivityTopic;
use Microsoft\Graph\Generated\Models\TeamworkActivityTopicSource;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\AadUserNotificationRecipient;
use Microsoft\Graph\Generated\Models\KeyValuePair;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendActivityNotificationPostRequestBody();
$topic = new TeamworkActivityTopic();
$topic->setSource(new TeamworkActivityTopicSource('entityUrl'));
$topic->setValue('https://graph.microsoft.com/v1.0/teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}');
$requestBody->setTopic($topic);
$requestBody->setActivityType('announcementPosted');
$previewText = new ItemBody();
$previewText->setContent('new announcemnet posted');
$requestBody->setPreviewText($previewText);
$requestBody->setIconId('announcementCreated');
$recipient = new AadUserNotificationRecipient();
$recipient->setOdataType('microsoft.graph.aadUserNotificationRecipient');
$recipient->setUserId('jacob@contoso.com');
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


$graphServiceClient->teams()->byTeamId('team-id')->sendActivityNotification()->post($requestBody)->wait();

```