---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EligibilitySchedulesRequestBuilderGetRequestConfiguration();
$queryParameters = EligibilitySchedulesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "principalId eq '3cce9d87-3986-4f19-8335-7ed075408ca2'";
$queryParameters->select = ["accessId","principalId","groupId"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->eligibilitySchedules()->get($requestConfiguration);


```