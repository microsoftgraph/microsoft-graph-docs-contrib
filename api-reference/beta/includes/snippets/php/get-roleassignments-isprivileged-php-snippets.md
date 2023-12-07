---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RoleAssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = RoleAssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["roleDefinition"];
$queryParameters->filter = "roleDefinition/isPrivileged eq true";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->roleManagement()->directory()->roleAssignments()->get($requestConfiguration)->wait();

```