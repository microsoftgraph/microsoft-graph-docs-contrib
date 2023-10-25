---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UnifiedRoleAssignmentMultipleItemRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleAssignmentMultipleItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["roleDefinition"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->roleManagement()->cloudPC()->roleAssignments()->byUnifiedRoleAssignmentMultipleId('unifiedRoleAssignmentMultiple-id')->get($requestConfiguration)->wait();

```