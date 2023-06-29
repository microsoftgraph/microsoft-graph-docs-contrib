---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new CalendarViewRequestBuilderGetRequestConfiguration();
$queryParameters = CalendarViewRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->startDateTime = "2017-01-01T19:00:00-08:00";
$queryParameters->endDateTime = "2017-01-07T19:00:00-08:00";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->calendar()->calendarView()->get($requestConfiguration);


```