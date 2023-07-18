---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new FilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration();
$queryParameters = FilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc' and accessId eq 'member'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->eligibilitySchedules()->filterByCurrentUserWithOn('principal', )->get($requestConfiguration);


```