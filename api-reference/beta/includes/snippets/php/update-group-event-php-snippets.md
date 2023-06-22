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
$requestBody->setUid('iCalUId-value');

$requestBody->setReminderMinutesBeforeStart(99);

$requestBody->setIsReminderOn(true);



$result = $graphServiceClient->groupsById('group-id')->eventsById('event-id')->patch($requestBody);


```