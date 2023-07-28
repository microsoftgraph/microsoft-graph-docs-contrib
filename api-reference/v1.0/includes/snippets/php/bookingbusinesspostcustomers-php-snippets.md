---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingCustomer();
$requestBody->setOdataType('#microsoft.graph.bookingCustomer');

$requestBody->setDisplayName('Joni Sherman');

$requestBody->setEmailAddress('jonis@relecloud.com');

$addressesPhysicalAddress1 = new PhysicalAddress();
$addressesPhysicalAddress1->setStreet('4567 Main Street');

$addressesPhysicalAddress1->setCity('Buffalo');

$addressesPhysicalAddress1->setState('NY');

$addressesPhysicalAddress1->setCountryOrRegion('USA');

$addressesPhysicalAddress1->setPostalCode('98052');

$additionalData = [
		'postOfficeBox' => '', 
		'type' => 'home', 
];
$addressesPhysicalAddress1->setAdditionalData($additionalData);



$addressesArray []= $addressesPhysicalAddress1;
$addressesPhysicalAddress2 = new PhysicalAddress();
$addressesPhysicalAddress2->setStreet('4570 Main Street');

$addressesPhysicalAddress2->setCity('Buffalo');

$addressesPhysicalAddress2->setState('NY');

$addressesPhysicalAddress2->setCountryOrRegion('USA');

$addressesPhysicalAddress2->setPostalCode('98054');

$additionalData = [
		'postOfficeBox' => '', 
		'type' => 'business', 
];
$addressesPhysicalAddress2->setAdditionalData($additionalData);



$addressesArray []= $addressesPhysicalAddress2;
$requestBody->setAddresses($addressesArray);


$phonesPhone1 = new Phone();
$phonesPhone1->setNumber('206-555-0100');

$phonesPhone1->setType(new PhoneType('home'));


$phonesArray []= $phonesPhone1;
$phonesPhone2 = new Phone();
$phonesPhone2->setNumber('206-555-0200');

$phonesPhone2->setType(new PhoneType('business'));


$phonesArray []= $phonesPhone2;
$requestBody->setPhones($phonesArray);




$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->customers()->post($requestBody);


```