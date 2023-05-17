---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BookingAppointment();
$requestBody->set@odatatype('#microsoft.graph.bookingAppointment');

$requestBody->setCustomerTimeZone('America/Chicago');

$requestBody->setSmsNotificationsEnabled(true);

$endDateTime = new DateTimeTimeZone();
$endDateTime->set@odatatype('#microsoft.graph.dateTimeTimeZone');

$endDateTime->setDateTime('2018-05-01T12:30:00.0000000+00:00');

$endDateTime->setTimeZone('UTC');


$requestBody->setEndDateTime($endDateTime);
$requestBody->setIsLocationOnline(true);

$requestBody->setOptOutOfCustomerEmail(false);

$requestBody->setAnonymousJoinWebUrl(null);

$requestBody->setPostBuffer(new \DateInterval('PT10M'));

$requestBody->setPreBuffer(new \DateInterval('PT5M'));

$requestBody->setPrice(10);

$requestBody->setPriceType(new BookingPriceType('fixedprice'));

$remindersBookingReminder1 = new BookingReminder();
$remindersBookingReminder1->set@odatatype('#microsoft.graph.bookingReminder');

$remindersBookingReminder1->setMessage('This service is tomorrow');

$remindersBookingReminder1->setOffset(new \DateInterval('P1D'));

$remindersBookingReminder1->setRecipients(new BookingReminderRecipients('allattendees'));

$additionalData = [
		'recipients@odata.type' => '#microsoft.graph.bookingReminderRecipients', 
];
$remindersBookingReminder1->setAdditionalData($additionalData);



$remindersArray []= $remindersBookingReminder1;
$remindersBookingReminder2 = new BookingReminder();
$remindersBookingReminder2->set@odatatype('#microsoft.graph.bookingReminder');

$remindersBookingReminder2->setMessage('Please be available to enjoy your lunch service.');

$remindersBookingReminder2->setOffset(new \DateInterval('PT1H'));

$remindersBookingReminder2->setRecipients(new BookingReminderRecipients('customer'));

$additionalData = [
		'recipients@odata.type' => '#microsoft.graph.bookingReminderRecipients', 
];
$remindersBookingReminder2->setAdditionalData($additionalData);



$remindersArray []= $remindersBookingReminder2;
$remindersBookingReminder3 = new BookingReminder();
$remindersBookingReminder3->set@odatatype('#microsoft.graph.bookingReminder');

$remindersBookingReminder3->setMessage('Please check traffic for next cater.');

$remindersBookingReminder3->setOffset(new \DateInterval('PT2H'));

$remindersBookingReminder3->setRecipients(new BookingReminderRecipients('staff'));

$additionalData = [
		'recipients@odata.type' => '#microsoft.graph.bookingReminderRecipients', 
];
$remindersBookingReminder3->setAdditionalData($additionalData);



$remindersArray []= $remindersBookingReminder3;
$requestBody->setReminders($remindersArray);


$requestBody->setServiceId('57da6774-a087-4d69-b0e6-6fb82c339976');

$serviceLocation = new Location();
$serviceLocation->set@odatatype('#microsoft.graph.location');

$serviceLocationAddress = new PhysicalAddress();
$serviceLocationAddress->set@odatatype('#microsoft.graph.physicalAddress');

$serviceLocationAddress->setCity('Buffalo');

$serviceLocationAddress->setCountryOrRegion('USA');

$serviceLocationAddress->setPostalCode('98052');

$serviceLocationAddress->setState('NY');

$serviceLocationAddress->setStreet('123 First Avenue');

$additionalData = [
	'postOfficeBox' => 	null,
	'type@odata.type' => '#microsoft.graph.physicalAddressType', 
	'type' => 	null,
];
$serviceLocationAddress->setAdditionalData($additionalData);



$serviceLocation->setAddress($serviceLocationAddress);
$ServiceLocation->setCoordinates(null);

$serviceLocation->setDisplayName('Customer location');

$ServiceLocation->setLocationEmailAddress(null);

$ServiceLocation->setLocationType(null);

$ServiceLocation->setLocationUri(null);

$ServiceLocation->setUniqueId(null);

$ServiceLocation->setUniqueIdType(null);

$additionalData = [
	'locationType@odata.type' => '#microsoft.graph.locationType', 
	'uniqueIdType@odata.type' => '#microsoft.graph.locationUniqueIdType', 
];
$serviceLocation->setAdditionalData($additionalData);



$requestBody->setServiceLocation($serviceLocation);
$requestBody->setServiceName('Catered bento');

$requestBody->setServiceNotes('Customer requires punctual service.');

$startDateTime = new DateTimeTimeZone();
$startDateTime->set@odatatype('#microsoft.graph.dateTimeTimeZone');

$startDateTime->setDateTime('2018-05-01T12:00:00.0000000+00:00');

$startDateTime->setTimeZone('UTC');


$requestBody->setStartDateTime($startDateTime);
$requestBody->setMaximumAttendeesCount(5);

$requestBody->setFilledAttendeesCount(1);

$customersBookingCustomerInformationBase1 = new BookingCustomerInformationBase();
$customersBookingCustomerInformationBase1->set@odatatype('#microsoft.graph.bookingCustomerInformation');

$additionalData = [
	'customerId' => '7ed53fa5-9ef2-4f2f-975b-27447440bc09', 
	'name' => 'Jordan Miller', 
	'emailAddress' => 'jordanm@contoso.com', 
	'phone' => '213-555-0199', 
	'notes' => 	null,
	'location' => $customersBookingCustomerInformationBase1 = new Location();
$	customersBookingCustomerInformationBase1->set@odatatype('#microsoft.graph.location');

$	customersBookingCustomerInformationBase1->setDisplayName('Customer');

	$customersBookingCustomerInformationBase1->setLocationEmailAddress(null);

$	customersBookingCustomerInformationBase1->setLocationUri('');

	$customersBookingCustomerInformationBase1->setLocationType(null);

	$customersBookingCustomerInformationBase1->setUniqueId(null);

	$customersBookingCustomerInformationBase1->setUniqueIdType(null);

$address = new Address();
$	address->set@odatatype('#microsoft.graph.physicalAddress');

$	address->setStreet('');

$	address->setCity('');

$	address->setState('');

$	address->setCountryOrRegion('');

$	address->setPostalCode('');


$customersBookingCustomerInformationBase1->setAddress($address);
$coordinates = new Coordinates();
	$Coordinates->setAltitude(null);

	$Coordinates->setLatitude(null);

	$Coordinates->setLongitude(null);

	$Coordinates->setAccuracy(null);

	$Coordinates->setAltitudeAccuracy(null);


$customersBookingCustomerInformationBase1->setCoordinates($coordinates);

$customersBookingCustomerInformationBase1->setLocation($location);

	'timeZone' => 'America/Chicago', 
	'customQuestionAnswers' => $customQuestionAnswers1 = new ();
$	customQuestionAnswers1->setQuestionId('3bc6fde0-4ad3-445d-ab17-0fc15dba0774');

$	customQuestionAnswers1->setQuestion('What is your age?');

$	customQuestionAnswers1->setAnswerInputType('text');

$customQuestionAnswers1->setAnswerOptions([]);

$customQuestionAnswers1->setIsRequired(true);

$customQuestionAnswers1->setAnswer('25');

$customQuestionAnswers1->setSelectedOptions([]);


$customQuestionAnswersArray []= $customQuestionAnswers1;
$customersBookingCustomerInformationBase1->setCustomQuestionAnswers($customQuestionAnswersArray);


];
$customersBookingCustomerInformationBase1->setAdditionalData($additionalData);



$customersArray []= $customersBookingCustomerInformationBase1;
$requestBody->setCustomers($customersArray);


$additionalData = [
'priceType@odata.type' => '#microsoft.graph.bookingPriceType', 
'reminders@odata.type' => '#Collection(microsoft.graph.bookingReminder)', 
'customers@odata.type' => '#Collection(microsoft.graph.bookingCustomerInformation)', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->solutions()->bookingBusinessesById('bookingBusiness-id')->appointments()->post($requestBody);


```