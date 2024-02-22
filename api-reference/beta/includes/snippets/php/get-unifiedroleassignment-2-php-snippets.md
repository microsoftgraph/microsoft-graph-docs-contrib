---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UnifiedRoleAssignmentItemRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleAssignmentItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["roleDefinition"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->roleManagement()->directory()->roleAssignments()->byUnifiedRoleAssignmentId('unifiedRoleAssignment-id')->get($requestConfiguration)->wait();

```