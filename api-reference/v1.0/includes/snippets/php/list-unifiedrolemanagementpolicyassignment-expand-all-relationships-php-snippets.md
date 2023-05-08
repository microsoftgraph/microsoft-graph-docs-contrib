---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new RoleManagementPolicyAssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = RoleManagementPolicyAssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "scopeId eq '/' and scopeType eq 'DirectoryRole' and roleDefinitionId eq '62e90394-69f5-4237-9190-012177145e10'";
$queryParameters->expand = ["policy($expand=rules)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->roleManagementPolicyAssignments()->get($requestConfiguration);


```