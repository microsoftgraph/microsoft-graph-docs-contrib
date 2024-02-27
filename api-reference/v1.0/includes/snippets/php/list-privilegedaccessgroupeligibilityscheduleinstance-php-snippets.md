---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EligibilityScheduleInstancesRequestBuilderGetRequestConfiguration();
$queryParameters = EligibilityScheduleInstancesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->eligibilityScheduleInstances()->get($requestConfiguration)->wait();

```