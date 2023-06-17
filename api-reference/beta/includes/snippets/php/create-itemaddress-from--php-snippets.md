---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ItemAddress();
$requestBody->setDisplayName('Home');

$detail = new PhysicalAddress();
$detail->setType(new PhysicalAddressType('home'));

$Detail->setPostOfficeBox(null);

$detail->setStreet('221B Baker Street');

$detail->setCity('London');

$Detail->setState(null);

$detail->setCountryOrRegion('United Kingdom');

$detail->setPostalCode('E14 3TD');


$requestBody->setDetail($detail);


$result = $graphServiceClient->me()->profile()->addresses()->post($requestBody);


```