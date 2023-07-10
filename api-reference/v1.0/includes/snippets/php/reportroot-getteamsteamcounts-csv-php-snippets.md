---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new GetTeamsTeamCountsWithPeriodRequestBuilderGetRequestConfiguration();
$queryParameters = GetTeamsTeamCountsWithPeriodRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "text/csv";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getTeamsTeamCounts(period='{period}')()->get($requestConfiguration);


```