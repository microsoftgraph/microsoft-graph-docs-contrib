---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\BookingBusiness;
use Microsoft\Graph\Generated\Models\BookingSchedulingPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingBusiness();
$requestBody->setEmail('admin@fabrikam.com');
$schedulingPolicy = new BookingSchedulingPolicy();
$schedulingPolicy->setTimeSlotInterval(new \DateInterval('PT60M'));
$schedulingPolicy->setMinimumLeadTime(new \DateInterval('P1D'));
$schedulingPolicy->setMaximumAdvance(new \DateInterval('P30D'));
$schedulingPolicy->setSendConfirmationsToOwner(true);
$schedulingPolicy->setAllowStaffSelection(true);
$requestBody->setSchedulingPolicy($schedulingPolicy);

$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->patch($requestBody)->wait();

```