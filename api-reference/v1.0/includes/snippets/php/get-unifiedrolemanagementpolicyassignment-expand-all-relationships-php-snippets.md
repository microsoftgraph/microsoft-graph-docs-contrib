---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UnifiedRoleManagementPolicyAssignmentItemRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleManagementPolicyAssignmentItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["policy(\$expand=rules)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->roleManagementPolicyAssignments()->byUnifiedRoleManagementPolicyAssignmentId('unifiedRoleManagementPolicyAssignment-id')->get($requestConfiguration)->wait();

```