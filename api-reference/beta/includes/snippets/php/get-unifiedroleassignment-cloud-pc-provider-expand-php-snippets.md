---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\RoleManagement\CloudPC\RoleAssignments\Item\UnifiedRoleAssignmentMultipleItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UnifiedRoleAssignmentMultipleItemRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleAssignmentMultipleItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["roleDefinition"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->roleManagement()->cloudPC()->roleAssignments()->byUnifiedRoleAssignmentMultipleId('unifiedRoleAssignmentMultiple-id')->get($requestConfiguration)->wait();

```