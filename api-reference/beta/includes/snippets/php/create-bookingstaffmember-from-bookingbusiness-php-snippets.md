---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BookingStaffMember();
$requestBody->set@odatatype('#microsoft.graph.bookingStaffMember');

$requestBody->setColorIndex(1);

$requestBody->setDisplayName('Dana Swope');

$requestBody->setEmailAddress('danas@contoso.com');

$requestBody->setRole(new BookingStaffRole('externalguest'));

$requestBody->setTimeZone('America/Chicago');

$requestBody->setUseBusinessHours(true);

$workingHoursBookingWorkHours1 = new BookingWorkHours();
$workingHoursBookingWorkHours1->set@odatatype('#microsoft.graph.bookingWorkHours');

$workingHoursBookingWorkHours1->setDay(new DayOfWeek('monday'));

$timeSlotsBookingWorkTimeSlot1 = new BookingWorkTimeSlot();
$timeSlotsBookingWorkTimeSlot1->set@odatatype('#microsoft.graph.bookingWorkTimeSlot');

$timeSlotsBookingWorkTimeSlot1->setEnd('17:00:00.0000000');

$timeSlotsBookingWorkTimeSlot1->setStart('08:00:00.0000000');


$timeSlotsArray []= $timeSlotsBookingWorkTimeSlot1;
$workingHoursBookingWorkHours1->setTimeSlots($timeSlotsArray);


$additionalData = [
'day@odata.type' => '#microsoft.graph.dayOfWeek', 
'timeSlots@odata.type' => '#Collection(microsoft.graph.bookingWorkTimeSlot)', 
];
$workingHoursBookingWorkHours1->setAdditionalData($additionalData);



$workingHoursArray []= $workingHoursBookingWorkHours1;
$workingHoursBookingWorkHours2 = new BookingWorkHours();
$workingHoursBookingWorkHours2->set@odatatype('#microsoft.graph.bookingWorkHours');

$workingHoursBookingWorkHours2->setDay(new DayOfWeek('tuesday'));

$timeSlotsBookingWorkTimeSlot1 = new BookingWorkTimeSlot();
$timeSlotsBookingWorkTimeSlot1->set@odatatype('#microsoft.graph.bookingWorkTimeSlot');

$timeSlotsBookingWorkTimeSlot1->setEnd('17:00:00.0000000');

$timeSlotsBookingWorkTimeSlot1->setStart('08:00:00.0000000');


$timeSlotsArray []= $timeSlotsBookingWorkTimeSlot1;
$workingHoursBookingWorkHours2->setTimeSlots($timeSlotsArray);


$additionalData = [
'day@odata.type' => '#microsoft.graph.dayOfWeek', 
'timeSlots@odata.type' => '#Collection(microsoft.graph.bookingWorkTimeSlot)', 
];
$workingHoursBookingWorkHours2->setAdditionalData($additionalData);



$workingHoursArray []= $workingHoursBookingWorkHours2;
$workingHoursBookingWorkHours3 = new BookingWorkHours();
$workingHoursBookingWorkHours3->set@odatatype('#microsoft.graph.bookingWorkHours');

$workingHoursBookingWorkHours3->setDay(new DayOfWeek('wednesday'));

$timeSlotsBookingWorkTimeSlot1 = new BookingWorkTimeSlot();
$timeSlotsBookingWorkTimeSlot1->set@odatatype('#microsoft.graph.bookingWorkTimeSlot');

$timeSlotsBookingWorkTimeSlot1->setEnd('17:00:00.0000000');

$timeSlotsBookingWorkTimeSlot1->setStart('08:00:00.0000000');


$timeSlotsArray []= $timeSlotsBookingWorkTimeSlot1;
$workingHoursBookingWorkHours3->setTimeSlots($timeSlotsArray);


$additionalData = [
'day@odata.type' => '#microsoft.graph.dayOfWeek', 
'timeSlots@odata.type' => '#Collection(microsoft.graph.bookingWorkTimeSlot)', 
];
$workingHoursBookingWorkHours3->setAdditionalData($additionalData);



$workingHoursArray []= $workingHoursBookingWorkHours3;
$workingHoursBookingWorkHours4 = new BookingWorkHours();
$workingHoursBookingWorkHours4->set@odatatype('#microsoft.graph.bookingWorkHours');

$workingHoursBookingWorkHours4->setDay(new DayOfWeek('thursday'));

$timeSlotsBookingWorkTimeSlot1 = new BookingWorkTimeSlot();
$timeSlotsBookingWorkTimeSlot1->set@odatatype('#microsoft.graph.bookingWorkTimeSlot');

$timeSlotsBookingWorkTimeSlot1->setEnd('17:00:00.0000000');

$timeSlotsBookingWorkTimeSlot1->setStart('08:00:00.0000000');


$timeSlotsArray []= $timeSlotsBookingWorkTimeSlot1;
$workingHoursBookingWorkHours4->setTimeSlots($timeSlotsArray);


$additionalData = [
'day@odata.type' => '#microsoft.graph.dayOfWeek', 
'timeSlots@odata.type' => '#Collection(microsoft.graph.bookingWorkTimeSlot)', 
];
$workingHoursBookingWorkHours4->setAdditionalData($additionalData);



$workingHoursArray []= $workingHoursBookingWorkHours4;
$workingHoursBookingWorkHours5 = new BookingWorkHours();
$workingHoursBookingWorkHours5->set@odatatype('#microsoft.graph.bookingWorkHours');

$workingHoursBookingWorkHours5->setDay(new DayOfWeek('friday'));

$timeSlotsBookingWorkTimeSlot1 = new BookingWorkTimeSlot();
$timeSlotsBookingWorkTimeSlot1->set@odatatype('#microsoft.graph.bookingWorkTimeSlot');

$timeSlotsBookingWorkTimeSlot1->setEnd('17:00:00.0000000');

$timeSlotsBookingWorkTimeSlot1->setStart('08:00:00.0000000');


$timeSlotsArray []= $timeSlotsBookingWorkTimeSlot1;
$workingHoursBookingWorkHours5->setTimeSlots($timeSlotsArray);


$additionalData = [
'day@odata.type' => '#microsoft.graph.dayOfWeek', 
'timeSlots@odata.type' => '#Collection(microsoft.graph.bookingWorkTimeSlot)', 
];
$workingHoursBookingWorkHours5->setAdditionalData($additionalData);



$workingHoursArray []= $workingHoursBookingWorkHours5;
$requestBody->setWorkingHours($workingHoursArray);


$requestBody->setIsEmailNotificationEnabled(false);

$additionalData = [
'role@odata.type' => '#microsoft.graph.bookingStaffRole', 
'workingHours@odata.type' => '#Collection(microsoft.graph.bookingWorkHours)', 
];
$requestBody->setAdditionalData($additionalData);




$requestResult = $graphServiceClient->bookingBusinessesById('bookingBusiness-id')->staffMembers()->post($requestBody);


```