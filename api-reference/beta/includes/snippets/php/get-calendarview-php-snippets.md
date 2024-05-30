---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Calendar\CalendarView\CalendarViewRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CalendarViewRequestBuilderGetRequestConfiguration();
$queryParameters = CalendarViewRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->startDateTime = "2017-01-01T19:00:00-08:00";
$queryParameters->endDateTime = "2017-01-07T19:00:00-08:00";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->calendar()->calendarView()->get($requestConfiguration)->wait();

```