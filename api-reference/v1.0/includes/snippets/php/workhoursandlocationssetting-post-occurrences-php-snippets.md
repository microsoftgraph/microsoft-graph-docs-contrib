---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WorkPlanOccurrence;
use Microsoft\Graph\Generated\Models\DateTimeTimeZone;
use Microsoft\Graph\Generated\Models\WorkLocationType;
use Microsoft\Graph\Generated\Models\TimeOffDetails;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkPlanOccurrence();
$start = new DateTimeTimeZone();
$start->setDateTime('2025-12-15T00:00:00.0000000');
$start->setTimeZone('Pacific Standard Time');
$requestBody->setStart($start);
$end = new DateTimeTimeZone();
$end->setDateTime('2025-12-15T23:59:59.0000000');
$end->setTimeZone('Pacific Standard Time');
$requestBody->setEnd($end);
$requestBody->setWorkLocationType(new WorkLocationType('timeOff'));
$timeOffDetails = new TimeOffDetails();
$timeOffDetails->setSubject('Personal Day');
$timeOffDetails->setIsAllDay(false);
$requestBody->setTimeOffDetails($timeOffDetails);

$result = $graphServiceClient->me()->settings()->workHoursAndLocations()->occurrences()->post($requestBody)->wait();

```