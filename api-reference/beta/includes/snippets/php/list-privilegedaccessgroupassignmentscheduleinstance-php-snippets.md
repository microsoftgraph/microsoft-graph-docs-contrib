---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AssignmentScheduleInstancesRequestBuilderGetRequestConfiguration();
$queryParameters = AssignmentScheduleInstancesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->assignmentScheduleInstances()->get($requestConfiguration);


```