---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->services()->byBookingServiceId('bookingService-id')->get()->wait();

```