---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new PrivilegedAccessGroupAssignmentScheduleRequestRequestBuilderGetRequestConfiguration();
$queryParameters = PrivilegedAccessGroupAssignmentScheduleRequestRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "status eq 'PendingApproval' and groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->assignmentScheduleRequestsById('privilegedAccessGroupAssignmentScheduleRequest-id')->get($requestConfiguration);


```