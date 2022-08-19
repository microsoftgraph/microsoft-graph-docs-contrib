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
$schedulingPolicy->setTimeSlotInterval('PT60M');

$schedulingPolicy->setMinimumLeadTime('P1D');

$schedulingPolicy->setMaximumAdvance('P30D');

$schedulingPolicy->setSendConfirmationsToOwner(true);

$schedulingPolicy->setAllowStaffSelection(true);


$requestBody->setSchedulingPolicy($schedulingPolicy);


$graphServiceClient->solutions()->bookingBusinessesById('bookingBusiness-id')->patch($requestBody);


```