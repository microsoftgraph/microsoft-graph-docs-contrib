---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BookingStaffMemberBase();
$requestBody->set@odatatype('#microsoft.graph.bookingStaffMember');

$additionalData = [
		'displayName' => 'Dana Swope', 
		'emailAddress' => 'danas@contoso.com', 
		'role@odata.type' => '#microsoft.graph.bookingStaffRole', 
		'role' => 'externalGuest', 
		'timeZone' => 'America/Chicago', 
		'useBusinessHours' => true,
		'workingHours@odata.type' => '#Collection(microsoft.graph.bookingWorkHours)', 
		'workingHours' => $workingHours1 = new ();
$		workingHours1->set@odatatype('#microsoft.graph.bookingWorkHours');

$		workingHours1->setDay@odatatype('#microsoft.graph.dayOfWeek');

$		workingHours1->setDay('monday');

$		workingHours1->setTimeSlots@odatatype('#Collection(microsoft.graph.bookingWorkTimeSlot)');

$timeSlots1 = new ();
$		timeSlots1->set@odatatype('#microsoft.graph.bookingWorkTimeSlot');

$		timeSlots1->setEndTime('17:00:00.0000000');

$		timeSlots1->setStartTime('08:00:00.0000000');


$timeSlotsArray []= $timeSlots1;
$workingHours1->setTimeSlots($timeSlotsArray);



$workingHoursArray []= $workingHours1;
$workingHours2 = new ();
$	workingHours2->set@odatatype('#microsoft.graph.bookingWorkHours');

$	workingHours2->setDay@odatatype('#microsoft.graph.dayOfWeek');

$	workingHours2->setDay('tuesday');

$	workingHours2->setTimeSlots@odatatype('#Collection(microsoft.graph.bookingWorkTimeSlot)');

$timeSlots1 = new ();
$	timeSlots1->set@odatatype('#microsoft.graph.bookingWorkTimeSlot');

$	timeSlots1->setEndTime('17:00:00.0000000');

$	timeSlots1->setStartTime('08:00:00.0000000');


$timeSlotsArray []= $timeSlots1;
$workingHours2->setTimeSlots($timeSlotsArray);



$workingHoursArray []= $workingHours2;
$workingHours3 = new ();
$workingHours3->set@odatatype('#microsoft.graph.bookingWorkHours');

$workingHours3->setDay@odatatype('#microsoft.graph.dayOfWeek');

$workingHours3->setDay('wednesday');

$workingHours3->setTimeSlots@odatatype('#Collection(microsoft.graph.bookingWorkTimeSlot)');

$timeSlots1 = new ();
$timeSlots1->set@odatatype('#microsoft.graph.bookingWorkTimeSlot');

$timeSlots1->setEndTime('17:00:00.0000000');

$timeSlots1->setStartTime('08:00:00.0000000');


$timeSlotsArray []= $timeSlots1;
$workingHours3->setTimeSlots($timeSlotsArray);



$workingHoursArray []= $workingHours3;
$workingHours4 = new ();
$workingHours4->set@odatatype('#microsoft.graph.bookingWorkHours');

$workingHours4->setDay@odatatype('#microsoft.graph.dayOfWeek');

$workingHours4->setDay('thursday');

$workingHours4->setTimeSlots@odatatype('#Collection(microsoft.graph.bookingWorkTimeSlot)');

$timeSlots1 = new ();
$timeSlots1->set@odatatype('#microsoft.graph.bookingWorkTimeSlot');

$timeSlots1->setEndTime('17:00:00.0000000');

$timeSlots1->setStartTime('08:00:00.0000000');


$timeSlotsArray []= $timeSlots1;
$workingHours4->setTimeSlots($timeSlotsArray);



$workingHoursArray []= $workingHours4;
$workingHours5 = new ();
$workingHours5->set@odatatype('#microsoft.graph.bookingWorkHours');

$workingHours5->setDay@odatatype('#microsoft.graph.dayOfWeek');

$workingHours5->setDay('friday');

$workingHours5->setTimeSlots@odatatype('#Collection(microsoft.graph.bookingWorkTimeSlot)');

$timeSlots1 = new ();
$timeSlots1->set@odatatype('#microsoft.graph.bookingWorkTimeSlot');

$timeSlots1->setEndTime('17:00:00.0000000');

$timeSlots1->setStartTime('08:00:00.0000000');


$timeSlotsArray []= $timeSlots1;
$workingHours5->setTimeSlots($timeSlotsArray);



$workingHoursArray []= $workingHours5;
$requestBody->setWorkingHours($workingHoursArray);


'isEmailNotificationEnabled' => false,
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->solutions()->bookingBusinessesById('bookingBusiness-id')->staffMembers()->post($requestBody);


```