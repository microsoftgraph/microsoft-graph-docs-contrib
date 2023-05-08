---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BookingCustomer();
$requestBody->setDisplayName('Joni Sherman');

$requestBody->setEmailAddress('jonis@relecloud.com');

$addressesPhysicalAddress1 = new PhysicalAddress();
$addressesPhysicalAddress1->setPostOfficeBox('');

$addressesPhysicalAddress1->setStreet('4567 Main Street');

$addressesPhysicalAddress1->setCity('Buffalo');

$addressesPhysicalAddress1->setState('NY');

$addressesPhysicalAddress1->setCountryOrRegion('USA');

$addressesPhysicalAddress1->setPostalCode('98052');

$addressesPhysicalAddress1->setType(new PhysicalAddressType('home'));


$addressesArray []= $addressesPhysicalAddress1;
$addressesPhysicalAddress2 = new PhysicalAddress();
$addressesPhysicalAddress2->setPostOfficeBox('');

$addressesPhysicalAddress2->setStreet('4570 Main Street');

$addressesPhysicalAddress2->setCity('Buffalo');

$addressesPhysicalAddress2->setState('NY');

$addressesPhysicalAddress2->setCountryOrRegion('USA');

$addressesPhysicalAddress2->setPostalCode('98054');

$addressesPhysicalAddress2->setType(new PhysicalAddressType('business'));


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




$result = $graphServiceClient->bookingBusinessesById('bookingBusiness-id')->customers()->post($requestBody);


```