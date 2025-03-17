---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->appointments()->byBookingAppointmentId('bookingAppointment-id')->delete()->wait();

```