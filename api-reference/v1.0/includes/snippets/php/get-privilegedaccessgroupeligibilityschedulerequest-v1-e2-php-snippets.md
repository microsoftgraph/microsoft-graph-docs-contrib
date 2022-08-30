---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\PrivilegedAccess\Group\EligibilityScheduleRequests\Item\PrivilegedAccessGroupEligibilityScheduleRequestItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PrivilegedAccessGroupEligibilityScheduleRequestItemRequestBuilderGetRequestConfiguration();
$queryParameters = PrivilegedAccessGroupEligibilityScheduleRequestItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["principalId","action","groupId"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->eligibilityScheduleRequests()->byPrivilegedAccessGroupEligibilityScheduleRequestId('privilegedAccessGroupEligibilityScheduleRequest-id')->get($requestConfiguration)->wait();

```