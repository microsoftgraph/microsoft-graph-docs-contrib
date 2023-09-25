---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MicrosoftEntitiesSummariesWithStartDateTimeWithEndDateTimeRequestBuilderGetRequestConfiguration();
$queryParameters = MicrosoftEntitiesSummariesWithStartDateTimeWithEndDateTimeRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "trafficType  eq 'microsoft365'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->networkAccess()->reports()->microsoftGraphNetworkaccessEntitiesSummariesWithStartDateTimeWithEndDateTime(new \DateTime('{endDateTime}'),new \DateTime('{startDateTime}'))->get($requestConfiguration)->wait();

```