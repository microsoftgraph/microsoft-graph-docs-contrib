---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UnifiedRoleAssignmentScheduleRequestRequestBuilderGetRequestConfiguration();

$queryParameters = new UnifiedRoleAssignmentScheduleRequestRequestBuilderGetQueryParameters();
$queryParameters->select = ["principalId","action","roleDefinitionId"];
$queryParameters->expand = ["roleDefinition","activatedUsing","principal","targetSchedule"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->roleManagement()->directory()->roleAssignmentScheduleRequestsById('unifiedRoleAssignmentScheduleRequest-id')->get($requestConfiguration);


```