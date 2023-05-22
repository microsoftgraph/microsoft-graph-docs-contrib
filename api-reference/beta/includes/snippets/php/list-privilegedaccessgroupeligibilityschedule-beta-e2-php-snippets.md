---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new EligibilitySchedulesRequestBuilderGetRequestConfiguration();
$queryParameters = EligibilitySchedulesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["accessId","principalId","groupId"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->eligibilitySchedules()->get($requestConfiguration);


```