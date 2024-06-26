---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Policies\RoleManagementPolicyAssignments\Item\UnifiedRoleManagementPolicyAssignmentItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UnifiedRoleManagementPolicyAssignmentItemRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleManagementPolicyAssignmentItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["policy(\$expand=rules)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->roleManagementPolicyAssignments()->byUnifiedRoleManagementPolicyAssignmentId('unifiedRoleManagementPolicyAssignment-id')->get($requestConfiguration)->wait();

```