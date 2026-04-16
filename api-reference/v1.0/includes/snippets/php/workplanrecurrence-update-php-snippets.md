---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WorkPlanRecurrence;
use Microsoft\Graph\Generated\Models\DateTimeTimeZone;
use Microsoft\Graph\Generated\Models\WorkLocationType;
use Microsoft\Graph\Generated\Models\PatternedRecurrence;
use Microsoft\Graph\Generated\Models\RecurrencePattern;
use Microsoft\Graph\Generated\Models\RecurrencePatternType;
use Microsoft\Graph\Generated\Models\DayOfWeek;
use Microsoft\Graph\Generated\Models\RecurrenceRange;
use Microsoft\Graph\Generated\Models\RecurrenceRangeType;
use Microsoft\Kiota\Abstractions\Types\Date;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkPlanRecurrence();
$start = new DateTimeTimeZone();
$start->setDateTime('2025-12-11T09:00:00.0000000');
$start->setTimeZone('Pacific Standard Time');
$requestBody->setStart($start);
$end = new DateTimeTimeZone();
$end->setDateTime('2025-12-11T18:00:00.0000000');
$end->setTimeZone('Pacific Standard Time');
$requestBody->setEnd($end);
$requestBody->setWorkLocationType(new WorkLocationType('office'));
$recurrence = new PatternedRecurrence();
$recurrencePattern = new RecurrencePattern();
$recurrencePattern->setType(new RecurrencePatternType('weekly'));
$recurrencePattern->setInterval(1);
$recurrencePattern->setFirstDayOfWeek(new DayOfWeek('sunday'));
$recurrencePattern->setDaysOfWeek([new DayOfWeek('thursday'),	]);
$recurrence->setPattern($recurrencePattern);
$recurrenceRange = new RecurrenceRange();
$recurrenceRange->setType(new RecurrenceRangeType('noEnd'));
$recurrenceRange->setStartDate(new Date('2025-12-11'));
$recurrenceRange->setRecurrenceTimeZone('Pacific Standard Time');
$recurrence->setRange($recurrenceRange);
$requestBody->setRecurrence($recurrence);

$result = $graphServiceClient->me()->settings()->workHoursAndLocations()->recurrences()->byWorkPlanRecurrenceId('workPlanRecurrence-id')->put($requestBody)->wait();

```