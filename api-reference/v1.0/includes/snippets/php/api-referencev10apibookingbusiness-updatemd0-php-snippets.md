---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BookingBusiness();
$requestBody->setEmail('admin@fabrikam.com');

$schedulingPolicy = new BookingSchedulingPolicy();
$schedulingPolicy->setTimeSlotInterval(new \DateInterval('PT60M'));

$schedulingPolicy->setMinimumLeadTime(new \DateInterval('P1D'));

$schedulingPolicy->setMaximumAdvance(new \DateInterval('P30D'));

$schedulingPolicy->setSendConfirmationsToOwner(true);

$schedulingPolicy->setAllowStaffSelection(true);


$requestBody->setSchedulingPolicy($schedulingPolicy);


$result = $graphServiceClient->solutions()->bookingBusinessesById('bookingBusiness-id')->patch($requestBody);


```