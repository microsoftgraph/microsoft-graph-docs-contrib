---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new PrivilegedAccessGroupEligibilityScheduleRequestRequestBuilderGetRequestConfiguration();
$queryParameters = PrivilegedAccessGroupEligibilityScheduleRequestRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["principalId","action","groupId"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->eligibilityScheduleRequests()->byEligibilityScheduleRequestId('privilegedAccessGroupEligibilityScheduleRequest-id')->get($requestConfiguration);


```