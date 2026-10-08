---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WorkPlanOccurrence;
use Microsoft\Graph\Beta\Generated\Models\DateTimeTimeZone;
use Microsoft\Graph\Beta\Generated\Models\WorkLocationType;
use Microsoft\Graph\Beta\Generated\Models\TimeOffDetails;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkPlanOccurrence();
$start = new DateTimeTimeZone();
$start->setDateTime('2025-12-15T08:00:00.0000000');
$start->setTimeZone('Pacific Standard Time');
$requestBody->setStart($start);
$end = new DateTimeTimeZone();
$end->setDateTime('2025-12-15T12:00:00.0000000');
$end->setTimeZone('Pacific Standard Time');
$requestBody->setEnd($end);
$requestBody->setWorkLocationType(new WorkLocationType('timeOff'));
$timeOffDetails = new TimeOffDetails();
$timeOffDetails->setSubject('Doctor Appointment');
$timeOffDetails->setIsAllDay(false);
$requestBody->setTimeOffDetails($timeOffDetails);

$result = $graphServiceClient->me()->settings()->workHoursAndLocations()->occurrences()->byWorkPlanOccurrenceId('workPlanOccurrence-id')->put($requestBody)->wait();

```