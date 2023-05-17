---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GetStaffAvailabilityPostRequestBody();
$requestBody->setStaffIds(['311a5454-08b2-4560-ba1c-f715e938cb79', ]);

$startDateTime = new DateTimeTimeZone();
$startDateTime->setDateTime('2022-01-25T00:00:00');

$startDateTime->setTimeZone('India Standard Time');


$requestBody->setStartDateTime($startDateTime);
$endDateTime = new DateTimeTimeZone();
$endDateTime->setDateTime('2022-01-26T17:00:00');

$endDateTime->setTimeZone('Pacific Standard Time');


$requestBody->setEndDateTime($endDateTime);


$result = $graphServiceClient->bookingBusinessesById('bookingBusiness-id')->getStaffAvailability()->post($requestBody);


```