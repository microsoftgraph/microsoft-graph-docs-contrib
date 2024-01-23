---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->customers()->byBookingCustomerId('bookingCustomer-id')->delete()->wait();

```