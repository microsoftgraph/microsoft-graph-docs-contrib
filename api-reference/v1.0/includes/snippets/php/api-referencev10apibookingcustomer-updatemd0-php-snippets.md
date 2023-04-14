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
		'displayName' => 'Adele', 
		'emailAddress' => 'adele@relecloud.com', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->solutions()->bookingBusinessesById('bookingBusiness-id')->customersById('bookingCustomerBase-id')->patch($requestBody);


```