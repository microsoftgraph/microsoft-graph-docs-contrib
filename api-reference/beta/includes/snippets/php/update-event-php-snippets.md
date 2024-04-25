---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Event;
use Microsoft\Graph\Generated\Models\ResponseStatus;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Event();
$requestBody->setOriginalStartTimeZone('originalStartTimeZone-value');
$requestBody->setOriginalEndTimeZone('originalEndTimeZone-value');
$responseStatus = new ResponseStatus();
$responseStatus->setResponse(new ResponseType('none'));
$responseStatus->setTime(new \DateTime('2016-10-19T10:37:00Z'));
$requestBody->setResponseStatus($responseStatus);
$requestBody->setRecurrence(null);
$requestBody->setReminderMinutesBeforeStart(99);
$requestBody->setIsOnlineMeeting(true);
$requestBody->setOnlineMeetingProvider(new OnlineMeetingProviderType('teamsForBusiness'));
$requestBody->setIsReminderOn(true);
$requestBody->setHideAttendees(false);
$requestBody->setCategories(['Red category', 	]);

$result = $graphServiceClient->me()->events()->byEventId('event-id')->patch($requestBody)->wait();

```