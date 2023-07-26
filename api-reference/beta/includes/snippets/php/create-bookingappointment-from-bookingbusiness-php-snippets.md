---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingAppointment();
$requestBody->setOdataType('#microsoft.graph.bookingAppointment');

$requestBody->setCustomerEmailAddress('jordanm@contoso.com');

$customerLocation = new Location();
$customerLocation->setOdataType('#microsoft.graph.location');

$customerLocationAddress = new PhysicalAddress();
$customerLocationAddress->setOdataType('#microsoft.graph.physicalAddress');

$customerLocationAddress->setCity('Buffalo');

$customerLocationAddress->setCountryOrRegion('USA');

$customerLocationAddress->setPostalCode('98052');

$CustomerLocationAddress->setPostOfficeBox(null);

$customerLocationAddress->setState('NY');

$customerLocationAddress->setStreet('123 First Avenue');

$CustomerLocationAddress->setType(null);

$additionalData = [
		'type@odata.type' => '#microsoft.graph.physicalAddressType', 
];
$customerLocationAddress->setAdditionalData($additionalData);



$customerLocation->setAddress($customerLocationAddress);
$CustomerLocation->setCoordinates(null);

$customerLocation->setDisplayName('Customer');

$CustomerLocation->setLocationEmailAddress(null);

$CustomerLocation->setLocationType(null);

$CustomerLocation->setLocationUri(null);

$CustomerLocation->setUniqueId(null);

$CustomerLocation->setUniqueIdType(null);

$additionalData = [
		'locationType@odata.type' => '#microsoft.graph.locationType', 
		'uniqueIdType@odata.type' => '#microsoft.graph.locationUniqueIdType', 
];
$customerLocation->setAdditionalData($additionalData);



$requestBody->setCustomerLocation($customerLocation);
$requestBody->setCustomerName('Jordan Miller');

$requestBody->setCustomerNotes('Please be on time.');

$requestBody->setCustomerPhone('213-555-0199');

$requestBody->setCustomerTimeZone('America/Chicago');

$requestBody->setSmsNotificationsEnabled(true);

$end = new DateTimeTimeZone();
$end->setOdataType('#microsoft.graph.dateTimeTimeZone');

$end->setDateTime('2018-05-01T12:30:00.0000000+00:00');

$end->setTimeZone('UTC');


$requestBody->setEnd($end);
$requestBody->setInvoiceAmount(10);

$invoiceDate = new DateTimeTimeZone();
$invoiceDate->setOdataType('#microsoft.graph.dateTimeTimeZone');

$invoiceDate->setDateTime('2018-05-01T12:30:00.0000000+00:00');

$invoiceDate->setTimeZone('UTC');


$requestBody->setInvoiceDate($invoiceDate);
$requestBody->setInvoiceId('1001');

$requestBody->setInvoiceStatus(new BookingInvoiceStatus('open'));

$requestBody->setInvoiceUrl('theInvoiceUrl');

$requestBody->setIsLocationOnline(true);

$requestBody->setOptOutOfCustomerEmail(false);

$requestBody->setAnonymousJoinWebUrl(null);

$requestBody->setPostBuffer(new \DateInterval('PT10M'));

$requestBody->setPreBuffer(new \DateInterval('PT5M'));

$requestBody->setPrice(10);

$requestBody->setPriceType(new BookingPriceType('fixedPrice'));

$remindersBookingReminder1 = new BookingReminder();
$remindersBookingReminder1->setOdataType('#microsoft.graph.bookingReminder');

$remindersBookingReminder1->setMessage('This service is tomorrow');

$remindersBookingReminder1->setOffset(new \DateInterval('P1D'));

$remindersBookingReminder1->setRecipients(new BookingReminderRecipients('allAttendees'));

$additionalData = [
		'recipients@odata.type' => '#microsoft.graph.bookingReminderRecipients', 
];
$remindersBookingReminder1->setAdditionalData($additionalData);



$remindersArray []= $remindersBookingReminder1;
$remindersBookingReminder2 = new BookingReminder();
$remindersBookingReminder2->setOdataType('#microsoft.graph.bookingReminder');

$remindersBookingReminder2->setMessage('Please be available to enjoy your lunch service.');

$remindersBookingReminder2->setOffset(new \DateInterval('PT1H'));

$remindersBookingReminder2->setRecipients(new BookingReminderRecipients('customer'));

$additionalData = [
		'recipients@odata.type' => '#microsoft.graph.bookingReminderRecipients', 
];
$remindersBookingReminder2->setAdditionalData($additionalData);



$remindersArray []= $remindersBookingReminder2;
$remindersBookingReminder3 = new BookingReminder();
$remindersBookingReminder3->setOdataType('#microsoft.graph.bookingReminder');

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
$serviceLocation->setOdataType('#microsoft.graph.location');

$serviceLocationAddress = new PhysicalAddress();
$serviceLocationAddress->setOdataType('#microsoft.graph.physicalAddress');

$serviceLocationAddress->setCity('Buffalo');

$serviceLocationAddress->setCountryOrRegion('USA');

$serviceLocationAddress->setPostalCode('98052');

$ServiceLocationAddress->setPostOfficeBox(null);

$serviceLocationAddress->setState('NY');

$serviceLocationAddress->setStreet('123 First Avenue');

$ServiceLocationAddress->setType(null);

$additionalData = [
	'type@odata.type' => '#microsoft.graph.physicalAddressType', 
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

$start = new DateTimeTimeZone();
$start->setOdataType('#microsoft.graph.dateTimeTimeZone');

$start->setDateTime('2018-05-01T12:00:00.0000000+00:00');

$start->setTimeZone('UTC');


$requestBody->setStart($start);
$requestBody->setMaximumAttendeesCount(5);

$requestBody->setFilledAttendeesCount(1);

$customersBookingCustomerInformationBase1 = new BookingCustomerInformation();
$customersBookingCustomerInformationBase1->setOdataType('#microsoft.graph.bookingCustomerInformation');

$customersBookingCustomerInformationBase1->setCustomerId('7ed53fa5-9ef2-4f2f-975b-27447440bc09');

$customersBookingCustomerInformationBase1->setName('Jordan Miller');

$customersBookingCustomerInformationBase1->setEmailAddress('jordanm@contoso.com');

$customersBookingCustomerInformationBase1->setPhone('213-555-0199');

$customersBookingCustomerInformationBase1->setNotes(null);

$customersBookingCustomerInformationBase1Location = new Location();
$customersBookingCustomerInformationBase1Location->setOdataType('#microsoft.graph.location');

$customersBookingCustomerInformationBase1Location->setDisplayName('Customer');

$customersBookingCustomerInformationBase1Location->setLocationEmailAddress(null);

$customersBookingCustomerInformationBase1Location->setLocationUri('');

$customersBookingCustomerInformationBase1Location->setLocationType(null);

$customersBookingCustomerInformationBase1Location->setUniqueId(null);

$customersBookingCustomerInformationBase1Location->setUniqueIdType(null);

$customersBookingCustomerInformationBase1LocationAddress = new PhysicalAddress();
$customersBookingCustomerInformationBase1LocationAddress->setOdataType('#microsoft.graph.physicalAddress');

$customersBookingCustomerInformationBase1LocationAddress->setType(new PhysicalAddressType('home'));

$customersBookingCustomerInformationBase1LocationAddress->setPostOfficeBox('');

$customersBookingCustomerInformationBase1LocationAddress->setStreet('');

$customersBookingCustomerInformationBase1LocationAddress->setCity('');

$customersBookingCustomerInformationBase1LocationAddress->setState('');

$customersBookingCustomerInformationBase1LocationAddress->setCountryOrRegion('');

$customersBookingCustomerInformationBase1LocationAddress->setPostalCode('');


$customersBookingCustomerInformationBase1Location->setAddress($customersBookingCustomerInformationBase1LocationAddress);
$customersBookingCustomerInformationBase1LocationCoordinates = new OutlookGeoCoordinates();
$customersBookingCustomerInformationBase1LocationCoordinates->setAltitude(null);

$customersBookingCustomerInformationBase1LocationCoordinates->setLatitude(null);

$customersBookingCustomerInformationBase1LocationCoordinates->setLongitude(null);

$customersBookingCustomerInformationBase1LocationCoordinates->setAccuracy(null);

$customersBookingCustomerInformationBase1LocationCoordinates->setAltitudeAccuracy(null);


$customersBookingCustomerInformationBase1Location->setCoordinates($customersBookingCustomerInformationBase1LocationCoordinates);

$customersBookingCustomerInformationBase1->setLocation($customersBookingCustomerInformationBase1Location);
$customersBookingCustomerInformationBase1->setTimeZone('America/Chicago');

$customQuestionAnswersBookingQuestionAnswer1 = new BookingQuestionAnswer();
$customQuestionAnswersBookingQuestionAnswer1->setQuestionId('3bc6fde0-4ad3-445d-ab17-0fc15dba0774');

$customQuestionAnswersBookingQuestionAnswer1->setQuestion('What is your age');

$customQuestionAnswersBookingQuestionAnswer1->setAnswerInputType(new AnswerInputType('text'));

$customQuestionAnswersBookingQuestionAnswer1->setAnswerOptions([]);

$customQuestionAnswersBookingQuestionAnswer1->setIsRequired(true);

$customQuestionAnswersBookingQuestionAnswer1->setAnswer('25');

$customQuestionAnswersBookingQuestionAnswer1->setSelectedOptions([]);


$customQuestionAnswersArray []= $customQuestionAnswersBookingQuestionAnswer1;
$customersBookingCustomerInformationBase1->setCustomQuestionAnswers($customQuestionAnswersArray);



$customersArray []= $customersBookingCustomerInformationBase1;
$requestBody->setCustomers($customersArray);


$additionalData = [
'invoiceStatus@odata.type' => '#microsoft.graph.bookingInvoiceStatus', 
'priceType@odata.type' => '#microsoft.graph.bookingPriceType', 
'reminders@odata.type' => '#Collection(microsoft.graph.bookingReminder)', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->appointments()->post($requestBody);


```