---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ShiftPreferences();
$requestBody->setId('SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7');

$availabilityShiftAvailability1 = new ShiftAvailability();
$availabilityShiftAvailability1Recurrence = new PatternedRecurrence();
$availabilityShiftAvailability1RecurrencePattern = new RecurrencePattern();
$availabilityShiftAvailability1RecurrencePattern->setType(new RecurrencePatternType('weekly'));

$availabilityShiftAvailability1RecurrencePattern->setDaysOfWeek([$availabilityShiftAvailability1RecurrencePattern->setDayOfWeek(new DayOfWeek('monday'));
$availabilityShiftAvailability1RecurrencePattern->setDayOfWeek(new DayOfWeek('wednesday'));
$availabilityShiftAvailability1RecurrencePattern->setDayOfWeek(new DayOfWeek('friday'));
]);

$availabilityShiftAvailability1RecurrencePattern->setInterval(1);


$availabilityShiftAvailability1Recurrence->setPattern($availabilityShiftAvailability1RecurrencePattern);
$availabilityShiftAvailability1RecurrenceRange = new RecurrenceRange();
$availabilityShiftAvailability1RecurrenceRange->setType(new RecurrenceRangeType('noend'));


$availabilityShiftAvailability1Recurrence->setRange($availabilityShiftAvailability1RecurrenceRange);

$availabilityShiftAvailability1->setRecurrence($availabilityShiftAvailability1Recurrence);
$availabilityShiftAvailability1->setTimeZone('Pacific Standard Time');

$availabilityShiftAvailability1->setTimeSlots(null);


$availabilityArray []= $availabilityShiftAvailability1;
$requestBody->setAvailability($availabilityArray);


$additionalData = [
'@odata.etag' => '1a371e53-f0a6-4327-a1ee-e3c56e4b38aa', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->usersById('user-id')->settings()->shiftPreferences()->patch($requestBody);


```