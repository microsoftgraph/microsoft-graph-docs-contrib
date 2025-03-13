---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ConversationThread;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConversationThread();
$additionalData = [
	'originalStartTimeZone' => 'originalStartTimeZone-value',
	'originalEndTimeZone' => 'originalEndTimeZone-value',
	'responseStatus' => [
		'response' => '',
		'time' => 'datetime-value',
	],
	'uid' => 'iCalUId-value',
	'reminderMinutesBeforeStart' => 99,
	'isReminderOn' => true,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->groups()->byGroupId('group-id')->threads()->byConversationThreadId('conversationThread-id')->patch($requestBody)->wait();

```