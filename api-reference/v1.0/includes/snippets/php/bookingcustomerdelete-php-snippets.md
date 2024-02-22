---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->customers()->byBookingCustomerBaseId('bookingCustomerBase-id')->delete()->wait();

```