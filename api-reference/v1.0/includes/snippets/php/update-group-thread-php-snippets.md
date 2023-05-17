---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ConversationThread();
$additionalData = [
		'originalStartTimeZone' => 'originalStartTimeZone-value', 
		'originalEndTimeZone' => 'originalEndTimeZone-value', 
		'responseStatus' => $requestBody = new ResponseStatus();
$		requestBody->setResponse('');

$		requestBody->setTime('datetime-value');


$requestBody->setResponseStatus($responseStatus);

		'iCalUId' => 'iCalUId-value', 
		'reminderMinutesBeforeStart' => 99,
		'isReminderOn' => true,
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->groupsById('group-id')->threadsById('conversationThread-id')->patch($requestBody);


```