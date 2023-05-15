---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BookingCustomerBase();
$requestBody->set@odatatype('#microsoft.graph.bookingCustomer');

$additionalData = [
		'displayName' => 'Joni Sherman', 
		'emailAddress' => 'jonis@relecloud.com', 
		'addresses' => $addresses1 = new ();
$		addresses1->setPostOfficeBox('');

$		addresses1->setStreet('4567 Main Street');

$		addresses1->setCity('Buffalo');

$		addresses1->setState('NY');

$		addresses1->setCountryOrRegion('USA');

$		addresses1->setPostalCode('98052');

$		addresses1->setType('home');


$addressesArray []= $addresses1;
$addresses2 = new ();
$		addresses2->setPostOfficeBox('');

$		addresses2->setStreet('4570 Main Street');

$		addresses2->setCity('Buffalo');

$		addresses2->setState('NY');

$		addresses2->setCountryOrRegion('USA');

$		addresses2->setPostalCode('98054');

$		addresses2->setType('business');


$addressesArray []= $addresses2;
$requestBody->setAddresses($addressesArray);


	'phones' => $phones1 = new ();
$	phones1->setNumber('206-555-0100');

$	phones1->setType('home');


$phonesArray []= $phones1;
$phones2 = new ();
$	phones2->setNumber('206-555-0200');

$	phones2->setType('business');


$phonesArray []= $phones2;
$requestBody->setPhones($phonesArray);


];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->solutions()->bookingBusinessesById('bookingBusiness-id')->customers()->post($requestBody);


```