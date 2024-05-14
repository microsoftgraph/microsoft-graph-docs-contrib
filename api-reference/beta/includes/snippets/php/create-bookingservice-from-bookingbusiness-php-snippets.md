---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\BookingService;
use Microsoft\Graph\Generated\Models\Location;
use Microsoft\Graph\Generated\Models\PhysicalAddress;
use Microsoft\Graph\Generated\Models\BookingReminder;
use Microsoft\Graph\Generated\Models\BookingSchedulingPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingService();
$requestBody->setOdataType('#microsoft.graph.bookingService');
$requestBody->setDefaultDuration(new \DateInterval('PT1H30M'));
$defaultLocation = new Location();
$defaultLocation->setOdataType('#microsoft.graph.location');
$defaultLocationAddress = new PhysicalAddress();
$defaultLocationAddress->setOdataType('#microsoft.graph.physicalAddress');
$defaultLocationAddress->setCity('Buffalo');
$defaultLocationAddress->setCountryOrRegion('USA');
$defaultLocationAddress->setPostalCode('98052');
$defaultLocationAddress->setPostOfficeBox(null);
$defaultLocationAddress->setState('NY');
$defaultLocationAddress->setStreet('4567 First Street');
$defaultLocationAddress->setType(null);
$additionalData = [
	'type@odata.type' => '#microsoft.graph.physicalAddressType',
];
$defaultLocationAddress->setAdditionalData($additionalData);
$defaultLocation->setAddress($defaultLocationAddress);
$defaultLocation->setCoordinates(null);
$defaultLocation->setDisplayName('Contoso Lunch Delivery');
$defaultLocation->setLocationEmailAddress(null);
$defaultLocation->setLocationType(null);
$defaultLocation->setLocationUri(null);
$defaultLocation->setUniqueId(null);
$defaultLocation->setUniqueIdType(null);
$additionalData = [
	'locationType@odata.type' => '#microsoft.graph.locationType',
	'uniqueIdType@odata.type' => '#microsoft.graph.locationUniqueIdType',
];
$defaultLocation->setAdditionalData($additionalData);
$requestBody->setDefaultLocation($defaultLocation);
$requestBody->setDefaultPrice(10);
$requestBody->setDefaultPriceType(new BookingPriceType('fixedPrice'));
$defaultRemindersBookingReminder1 = new BookingReminder();
$defaultRemindersBookingReminder1->setOdataType('#microsoft.graph.bookingReminder');
$defaultRemindersBookingReminder1->setMessage('Please be reminded that this service is tomorrow.');
$defaultRemindersBookingReminder1->setOffset(new \DateInterval('P1D'));
$defaultRemindersBookingReminder1->setRecipients(new BookingReminderRecipients('allAttendees'));
$additionalData = [
	'recipients@odata.type' => '#microsoft.graph.bookingReminderRecipients',
];
$defaultRemindersBookingReminder1->setAdditionalData($additionalData);
$defaultRemindersArray []= $defaultRemindersBookingReminder1;
$requestBody->setDefaultReminders($defaultRemindersArray);

$requestBody->setDescription('Individual bento box lunch delivery');
$requestBody->setDisplayName('Bento');
$requestBody->setIsLocationOnline(true);
$requestBody->setSmsNotificationsEnabled(true);
$requestBody->setIsCustomerAllowedToManageBooking(true);
$requestBody->setLanguageTag('en-US');
$requestBody->setIsHiddenFromCustomers(false);
$requestBody->setNotes('Home-cooked special');
$requestBody->setPostBuffer(new \DateInterval('PT10M'));
$requestBody->setPreBuffer(new \DateInterval('PT5M'));
$schedulingPolicy = new BookingSchedulingPolicy();
$schedulingPolicy->setOdataType('#microsoft.graph.bookingSchedulingPolicy');
$schedulingPolicy->setAllowStaffSelection(true);
$schedulingPolicy->setMaximumAdvance(new \DateInterval('P10D'));
$schedulingPolicy->setMinimumLeadTime(new \DateInterval('PT10H'));
$schedulingPolicy->setSendConfirmationsToOwner(true);
$schedulingPolicy->setTimeSlotInterval(new \DateInterval('PT1H'));
$requestBody->setSchedulingPolicy($schedulingPolicy);
$requestBody->setStaffMemberIds(['d90d1e8c-5cfe-48cf-a2d5-966267375b6a', '2f5f8794-0b29-45b5-b56a-2eb5ff7aa880', ]);
$requestBody->setIsAnonymousJoinEnabled(false);
$additionalData = [
'defaultPriceType@odata.type' => '#microsoft.graph.bookingPriceType',
'defaultReminders@odata.type' => '#Collection(microsoft.graph.bookingReminder)',
'staffMemberIds@odata.type' => '#Collection(String)',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->services()->post($requestBody)->wait();

```