---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->bookingCurrencies()->byBookingCurrencyId('bookingCurrency-id')->get()->wait();

```