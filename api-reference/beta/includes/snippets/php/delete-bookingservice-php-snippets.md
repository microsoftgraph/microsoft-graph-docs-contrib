---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->services()->byBookingServiceId('bookingService-id')->delete()->wait();

```