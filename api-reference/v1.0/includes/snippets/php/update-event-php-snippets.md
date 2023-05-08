---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Event();
$requestBody->setOriginalStartTimeZone('originalStartTimeZone-value');

$requestBody->setOriginalEndTimeZone('originalEndTimeZone-value');

$responseStatus = new ResponseStatus();
$responseStatus->setResponse(new ResponseType('none'));

$responseStatus->setTime(new DateTime('datetime-value'));


$requestBody->setResponseStatus($responseStatus);
$requestBody->setRecurrence(null);

$requestBody->setReminderMinutesBeforeStart(99);

$requestBody->setIsOnlineMeeting(true);

$requestBody->setOnlineMeetingProvider(new OnlineMeetingProviderType('teamsforbusiness'));

$requestBody->setIsReminderOn(true);

$requestBody->setHideAttendees(false);

$requestBody->setCategories(['Red category', ]);



$result = $graphServiceClient->me()->eventsById('event-id')->patch($requestBody);


```