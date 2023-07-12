---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new EntitiesSummariesWithStartDateTimeWithEndDateTimeRequestBuilderGetRequestConfiguration();
$queryParameters = EntitiesSummariesWithStartDateTimeWithEndDateTimeRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "trafficType  eq 'microsoft365'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->networkAccess()->reports()->microsoftGraphNetworkaccessEntitiesSummaries(startDateTime={startDateTime},endDateTime={endDateTime})()->get($requestConfiguration);


```