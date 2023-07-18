---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EligibilityScheduleRequestsRequestBuilderGetRequestConfiguration();
$queryParameters = EligibilityScheduleRequestsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["principalId","action","groupId"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->eligibilityScheduleRequests()->get($requestConfiguration);


```