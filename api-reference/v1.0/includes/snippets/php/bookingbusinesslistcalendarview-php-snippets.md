---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Solutions\BookingBusinesses\Item\CalendarView\CalendarViewRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CalendarViewRequestBuilderGetRequestConfiguration();
$queryParameters = CalendarViewRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->start = "2018-04-30T00:00:00Z";
$queryParameters->end = "2018-05-10T00:00:00Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->calendarView()->get($requestConfiguration)->wait();

```