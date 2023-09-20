---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UnifiedRoleAssignmentScheduleRequestItemRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleAssignmentScheduleRequestItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["principalId","action","roleDefinitionId"];
$queryParameters->expand = ["roleDefinition","activatedUsing","principal","targetSchedule"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->roleManagement()->directory()->roleAssignmentScheduleRequests()->byUnifiedRoleAssignmentScheduleRequestId('unifiedRoleAssignmentScheduleRequest-id')->get($requestConfiguration)->wait();

```