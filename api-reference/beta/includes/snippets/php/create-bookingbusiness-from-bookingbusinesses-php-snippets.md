---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\BookingBusiness;
use Microsoft\Graph\Generated\Models\PhysicalAddress;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingBusiness();
$requestBody->setDisplayName('Fourth Coffee');
$address = new PhysicalAddress();
$address->setPostOfficeBox('P.O. Box 123');
$address->setStreet('4567 Main Street');
$address->setCity('Buffalo');
$address->setState('NY');
$address->setCountryOrRegion('USA');
$address->setPostalCode('98052');
$requestBody->setAddress($address);
$requestBody->setPhone('206-555-0100');
$requestBody->setEmail('manager@fourthcoffee.com');
$requestBody->setWebSiteUrl('https://www.fourthcoffee.com');
$requestBody->setDefaultCurrencyIso('USD');

$result = $graphServiceClient->solutions()->bookingBusinesses()->post($requestBody)->wait();

```