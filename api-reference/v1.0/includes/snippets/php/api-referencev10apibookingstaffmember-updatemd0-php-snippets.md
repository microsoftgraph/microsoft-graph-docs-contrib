---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingStaffMember();
$requestBody->setOdataType('#microsoft.graph.bookingStaffMember');

$workingHoursBookingWorkHours1 = new BookingWorkHours();
$workingHoursBookingWorkHours1->setOdataType('#microsoft.graph.bookingWorkHours');

$workingHoursBookingWorkHours1->setDay(new DayOfWeek('monday'));

$workingHoursBookingWorkHours1->setTimeSlots([	]);

$additionalData = [
		'day@odata.type' => '#microsoft.graph.dayOfWeek', 
		'timeSlots@odata.type' => '#Collection(microsoft.graph.bookingWorkTimeSlot)', 
];
$workingHoursBookingWorkHours1->setAdditionalData($additionalData);



$workingHoursArray []= $workingHoursBookingWorkHours1;
$workingHoursBookingWorkHours2 = new BookingWorkHours();
$workingHoursBookingWorkHours2->setOdataType('#microsoft.graph.bookingWorkHours');

$workingHoursBookingWorkHours2->setDay(new DayOfWeek('tuesday'));

$timeSlotsBookingWorkTimeSlot1 = new BookingWorkTimeSlot();
$timeSlotsBookingWorkTimeSlot1->setOdataType('#microsoft.graph.bookingWorkTimeSlot');

$timeSlotsBookingWorkTimeSlot1->setEndTime(new Time('17:00:00.0000000'));

$timeSlotsBookingWorkTimeSlot1->setStartTime(new Time('08:00:00.0000000'));


$timeSlotsArray []= $timeSlotsBookingWorkTimeSlot1;
$workingHoursBookingWorkHours2->setTimeSlots($timeSlotsArray);


$additionalData = [
	'day@odata.type' => '#microsoft.graph.dayOfWeek', 
	'timeSlots@odata.type' => '#Collection(microsoft.graph.bookingWorkTimeSlot)', 
];
$workingHoursBookingWorkHours2->setAdditionalData($additionalData);



$workingHoursArray []= $workingHoursBookingWorkHours2;
$workingHoursBookingWorkHours3 = new BookingWorkHours();
$workingHoursBookingWorkHours3->setOdataType('#microsoft.graph.bookingWorkHours');

$workingHoursBookingWorkHours3->setDay(new DayOfWeek('wednesday'));

$timeSlotsBookingWorkTimeSlot1 = new BookingWorkTimeSlot();
$timeSlotsBookingWorkTimeSlot1->setOdataType('#microsoft.graph.bookingWorkTimeSlot');

$timeSlotsBookingWorkTimeSlot1->setEndTime(new Time('17:00:00.0000000'));

$timeSlotsBookingWorkTimeSlot1->setStartTime(new Time('08:00:00.0000000'));


$timeSlotsArray []= $timeSlotsBookingWorkTimeSlot1;
$workingHoursBookingWorkHours3->setTimeSlots($timeSlotsArray);


$additionalData = [
'day@odata.type' => '#microsoft.graph.dayOfWeek', 
'timeSlots@odata.type' => '#Collection(microsoft.graph.bookingWorkTimeSlot)', 
];
$workingHoursBookingWorkHours3->setAdditionalData($additionalData);



$workingHoursArray []= $workingHoursBookingWorkHours3;
$workingHoursBookingWorkHours4 = new BookingWorkHours();
$workingHoursBookingWorkHours4->setOdataType('#microsoft.graph.bookingWorkHours');

$workingHoursBookingWorkHours4->setDay(new DayOfWeek('thursday'));

$timeSlotsBookingWorkTimeSlot1 = new BookingWorkTimeSlot();
$timeSlotsBookingWorkTimeSlot1->setOdataType('#microsoft.graph.bookingWorkTimeSlot');

$timeSlotsBookingWorkTimeSlot1->setEndTime(new Time('17:00:00.0000000'));

$timeSlotsBookingWorkTimeSlot1->setStartTime(new Time('08:00:00.0000000'));


$timeSlotsArray []= $timeSlotsBookingWorkTimeSlot1;
$workingHoursBookingWorkHours4->setTimeSlots($timeSlotsArray);


$additionalData = [
'day@odata.type' => '#microsoft.graph.dayOfWeek', 
'timeSlots@odata.type' => '#Collection(microsoft.graph.bookingWorkTimeSlot)', 
];
$workingHoursBookingWorkHours4->setAdditionalData($additionalData);



$workingHoursArray []= $workingHoursBookingWorkHours4;
$workingHoursBookingWorkHours5 = new BookingWorkHours();
$workingHoursBookingWorkHours5->setOdataType('#microsoft.graph.bookingWorkHours');

$workingHoursBookingWorkHours5->setDay(new DayOfWeek('friday'));

$timeSlotsBookingWorkTimeSlot1 = new BookingWorkTimeSlot();
$timeSlotsBookingWorkTimeSlot1->setOdataType('#microsoft.graph.bookingWorkTimeSlot');

$timeSlotsBookingWorkTimeSlot1->setEndTime(new Time('17:00:00.0000000'));

$timeSlotsBookingWorkTimeSlot1->setStartTime(new Time('08:00:00.0000000'));


$timeSlotsArray []= $timeSlotsBookingWorkTimeSlot1;
$workingHoursBookingWorkHours5->setTimeSlots($timeSlotsArray);


$additionalData = [
'day@odata.type' => '#microsoft.graph.dayOfWeek', 
'timeSlots@odata.type' => '#Collection(microsoft.graph.bookingWorkTimeSlot)', 
];
$workingHoursBookingWorkHours5->setAdditionalData($additionalData);



$workingHoursArray []= $workingHoursBookingWorkHours5;
$requestBody->setWorkingHours($workingHoursArray);




$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->staffMembers()->byBookingStaffMemberBaseId('bookingStaffMemberBase-id')->patch($requestBody);


```