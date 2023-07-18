---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$headers = [
		'Prefer' => 'odata.maxpagesize=2',
	];
$requestConfiguration->headers = $headers;

$queryParameters = DeltaRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->startDateTime = "2016-12-01T00:00:00Z";
$queryParameters->endDateTime = "2016-12-30T00:00:00Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->calendarView()->delta()->get($requestConfiguration);


```